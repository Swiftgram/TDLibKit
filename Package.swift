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
        // Minimum versions as of Xcode 14.2
        .iOS(.v11),
        .macOS(.v10_13),
        .watchOS(.v4),
        .tvOS(.v11)
    ],
    products: [
        .library(
            name: "TDLibKit",
            targets: ["TDLibKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swiftgram/TDLibFramework", .exact("1.8.21-aefbf032")),
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

