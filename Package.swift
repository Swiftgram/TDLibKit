// swift-tools-version:5.6
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
        .package(url: "https://github.com/Swiftgram/TDLibFramework", exact: "1.8.4-906d773d"),
    ],
    targets: [
        .target(
            name: "TDLibKit",
            dependencies: ["TDLibFramework"]),
    ]
)

