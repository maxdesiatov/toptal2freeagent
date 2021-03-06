// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "toptal2freeagent",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/maxdesiatov/CoreXLSX.git",
                .branch("master")),
        .package(url: "https://github.com/yaslab/CSV.swift.git",
                 .upToNextMinor(from: "2.2.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "toptal2freeagent",
            dependencies: ["CoreXLSX", "CSV"]),
        .testTarget(
            name: "toptal2freeagentTests",
            dependencies: ["toptal2freeagent"]),
    ]
)
