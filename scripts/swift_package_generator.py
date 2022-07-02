import argparse

def get_file_content(tdlibframework_version):
    return f"""// swift-tools-version:5.6
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py

import PackageDescription

let package = Package(
    name: "TDLibKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6), // Based on iOS 13 version
        .tvOS(.v13) // Based on iOS 13 version
    ],
    products: [
        .library(
            name: "TDLibKit",
            targets: ["TDLibKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swiftgram/TDLibFramework", .exact: "{tdlibframework_version}"),
    ],
    targets: [
        .target(
            name: "TDLibKit",
            dependencies: ["TDLibFramework"]),
    ]
)

"""

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("tdlibframework_version", help="Swiftgram/TDLibFramework version")
    
    args = parser.parse_args()
    with open('Package.swift', 'w') as f:
        f.write(get_file_content(args.tdlibframework_version))
