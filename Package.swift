// swift-tools-version:5.1
//
// Copyright 2019, Vy-Shane Xie
// Licensed under the Apache License, Version 2.0

import PackageDescription

let package = Package(
    name: "CombineGRPC",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(
            name: "CombineGRPC",
            targets: ["CombineGRPC"]),
    ],
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", .upToNextMinor(from: "1.7.0")),
        .package(url: "https://github.com/CombineCommunity/CombineExt.git", from: "1.8.0"),
    ],
    targets: [
        .target(
            name: "CombineGRPC",
            dependencies: ["GRPC", "CombineExt"]),
        .testTarget(
            name: "CombineGRPCTests",
            dependencies: ["CombineGRPC"]),
    ]
)
