#!/usr/bin/env python3
import argparse
import os
import subprocess
import urllib.request
import json
from utils import run_command


def main(tdlibframework_version: str = None):
    # Get the directory of this script
    scripts_dir = os.path.dirname(os.path.realpath(__file__))

    # Fetch the latest release tag name from GitHub
    if not tdlibframework_version:
        tdlibframework_version = run_command(
            [
                "gh",
                "release",
                "list",
                "--repo",
                "Swiftgram/TDLibFramework",
                "--limit",
                "1",
                "--json",
                "tagName",
                "-q",
                ".[0].tagName",
            ]
        )
    print(f"TDLibFramework version: {tdlibframework_version}")

    os.chdir(os.path.join(scripts_dir, ".."))
    # Run the swift_package_generator.py script with the version
    run_command(
        [
            "python3",
            os.path.join(scripts_dir, "swift_package_generator.py"),
            tdlibframework_version,
        ],
        check=True,
    )

    # Update Swift package
    run_command(["swift", "package", "update"], check=True)

    # Parse the TDLIB commit version
    tdlib_version = run_command(
        ["python3", os.path.join(scripts_dir, "parse_tdlib_version.py"), "version"]
    )
    tdlib_commit = run_command(
        ["python3", os.path.join(scripts_dir, "parse_tdlib_version.py"), "commit"]
    )

    # Download the td_api.tl file
    td_api_url = f"https://raw.githubusercontent.com/tdlib/td/{tdlib_commit}/td/generate/scheme/td_api.tl"
    td_api_tl_path = os.path.join(scripts_dir, "..", "td_api.tl")
    urllib.request.urlretrieve(td_api_url, td_api_tl_path)

    # Change directory to tl2swift and generate Swift code
    os.chdir(os.path.join(scripts_dir, "tl2swift"))
    # Remove the existing generated code
    run_command(
        [
            "rm",
            "-rf",
            os.path.join(scripts_dir, "..", "Sources", "TDLibKit", "Generated"),
        ],
        check=True,
    )
    # Generate new Swift code
    run_command(
        [
            "swift",
            "run",
            "tl2swift",
            os.path.join(scripts_dir, "..", "td_api.tl"),
            os.path.join(scripts_dir, "..", "Sources", "TDLibKit", "Generated"),
            tdlib_version,
            tdlib_commit,
        ],
        check=True,
    )

    with open(os.path.join(scripts_dir, "..", "versions.json")) as f:
        current_versions = json.load(f)

    with open(os.path.join(scripts_dir, "..", "versions.json"), "w") as f:
        current_versions.update(
            {
                "tdlib_version": tdlib_version,
                "tdlib_commit": tdlib_commit,
                "tdlibframework_version": tdlibframework_version,
            }
        )
        json.dump(current_versions, f, indent=4)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Update TDLibFramework pin")
    parser.add_argument(
        "--version", type=str, help="Override the TDLibFramework version"
    )
    args = parser.parse_args()
    main(args.version)
