// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TDLibKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TDLibKit",
            targets: ["TDLibKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swiftgram/TDLibFramework", from: "1.7.5-73d8fb4"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TDLibKit",
            dependencies: []),
        .testTarget(
            name: "TDLibKitTests",
            dependencies: ["TDLibKit"]),
    ]
)
