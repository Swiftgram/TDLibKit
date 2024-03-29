// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py

import PackageDescription


// Workaround for Xcode 14.3+ https://github.com/Swiftgram/TDLibKit/issues/31
#if swift(>=5.8)
var swiftSettings: [SwiftSetting] = [
    .unsafeFlags(["-Xllvm", "-vectorize-slp=false"], .when(configuration: .release))
]
#else
var swiftSettings: [SwiftSetting] = []
#endif


let package = Package(
    name: "TDLibKit",
    platforms: [
        // Following versions of https://github.com/Swiftgram/TDLibFramework/blob/main/Package.swift
        .iOS(.v12),
        .macOS(.v10_15),
        .watchOS(.v4),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "TDLibKit",
            targets: ["TDLibKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swiftgram/TDLibFramework", .exact("1.8.26-586bc784")),
    ],
    targets: [
        .target(
            name: "TDLibKit",
            dependencies: ["TDLibFramework"],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "TDLibKitTests",
            dependencies: ["TDLibKit"]
        ),
    ]
)

