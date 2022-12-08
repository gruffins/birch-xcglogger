// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "BirchXCGLogger",
    products: [
        .library(
            name: "BirchXCGLogger",
            targets: ["BirchXCGLogger"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gruffins/birch-ios.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "BirchXCGLogger",
            dependencies: ["Birch"]),
    ]
)