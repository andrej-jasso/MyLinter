// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LintBridge",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LintBridge",
            targets: ["LintBridge"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser",
            .upToNextMinor(from: "1.0.0")
        ),
        .package(
            url: "https://github.com/realm/SwiftLint",
            from: "0.39.1"
        )
    ],
    targets: [
        .executableTarget(
            name: "LintBridge",
            dependencies:
            [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
