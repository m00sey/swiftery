// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftery",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "swiftery",
            targets: ["swiftery"]),
    ],
    dependencies: [
        .package(name: "Sodium", url: "https://github.com/jedisct1/swift-sodium.git", from: "0.9.1"),
        .package(name: "SwiftLMDB", url: "https://github.com/agisboye/SwiftLMDB.git", from: "2.0.0"),
        .package(name: "BLAKE3", url: "https://github.com/nixberg/blake3-swift", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "swiftery",
            dependencies: [
                "Sodium",
                "SwiftLMDB",
                "BLAKE3",
            ]),
        .testTarget(
            name: "swifteryTests",
            dependencies: ["swiftery"]),
    ]
)
