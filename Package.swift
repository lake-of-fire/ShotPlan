// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShotPlan",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "shotplan", targets: ["ShotPlan"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/ChargePoint/xcparse.git", branch: "master"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMajor(from: "1.2.2")),
    ],
    targets: [
        .executableTarget(
            name: "ShotPlan",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
        .testTarget(
            name: "ShotPlanTests",
            dependencies: ["ShotPlan"]),
    ]
)
