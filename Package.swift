// swift-tools-version:5.0
// Package.swift
// Copyright © 2020 Adrian Kashivskyy. All rights reserved.

import PackageDescription

let package = Package(
    name: "QuickSwiftCheck",
    platforms: [
        .macOS(.v10_10), .iOS(.v9), .tvOS(.v9),
    ],
    products: [
        .library(name: "QuickSwiftCheck", targets: ["QuickSwiftCheck"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mRs-/Nimble", .branch("master")),
        .package(url: "https://github.com/mRs-/Quick", .branch("master")),
        .package(url: "https://github.com/typelift/SwiftCheck", from: "0.12.0"),
    ],
    targets: [
        .target(
            name: "QuickSwiftCheck",
            dependencies: ["Nimble", "Quick", "SwiftCheck"],
            path: "Sources"
        )
    ],
    swiftLanguageVersions: [
        .v5,
    ]
)
