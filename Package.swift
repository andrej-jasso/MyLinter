// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LintBridge",
    products: [
        .library(
            name: "LintBridgeProduct",
            targets: ["LintBridgeExecutable"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser",
            .upToNextMinor(from: "1.0.0")
        )
    ],
    targets: [
        .executableTarget(
            name: "LintBridgeExecutable",
            dependencies:
            [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
