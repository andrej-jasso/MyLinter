// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LintBridge",
    products: [
        .library(
            name: "LintBridge",
            targets: ["LintBridge"]),
    ],
    dependencies: [
        .package(
            name: "swift-argument-parser",
            url: "https://github.com/apple/swift-argument-parser",
            .upToNextMinor(from: "0.4.3")
        ),
        .package(
            url: "https://github.com/realm/SwiftLint",
            from: "0.39.1"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LintBridge",
            dependencies: ["ArgumentParser", "LintBridge"])
    ]
)
