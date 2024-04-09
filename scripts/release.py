#!/usr/bin/env python3
import os
import json
from utils import run_command


def main():
    # Get the directory of this script
    scripts_dir = os.path.dirname(os.path.realpath(__file__))

    with open(os.path.join(scripts_dir, "..", "versions.json")) as f:
        versions = json.load(f)

    release_tag = f"{versions['package']}-tdlib-{versions['tdlib_version']}-{versions['tdlib_commit']}"
    run_command(
        [
            "gh",
            "release",
            "delete",
            release_tag,
            "--yes",
            "--cleanup-tag",
        ],
        check=False,
    )

    print(f"Release tag: {release_tag}")
    run_command(
        [
            "gh",
            "release",
            "create",
            release_tag,
            "--title",
            release_tag,
            "--notes",
            f"TDLibKit based on TDLib-{versions['tdlib_version']} commit [{versions['tdlib_commit']}](https://github.com/tdlib/td/tree/{versions['tdlib_commit']})",
        ],
        check=False,
    )


if __name__ == "__main__":
    main()
