// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "tl2swift",
    products: [
        .executable(
            name: "tl2swift",
            targets: ["tl2swift"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TlParserLib",
            dependencies: []),
        .target(
            name: "tl2swift",
            dependencies: ["TlParserLib"])
    ]
)
