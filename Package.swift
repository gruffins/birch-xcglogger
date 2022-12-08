// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "BirchXCGLogger",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "BirchXCGLogger",
            targets: ["BirchXCGLogger"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gruffins/birch-ios.git", .upToNextMajor(from: "1.2.1")),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger", .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
        .target(
            name: "BirchXCGLogger",
            dependencies: [
                .product(name: "Birch", package: "birch-ios"),
                .product(name: "XCGLogger", package: "XCGLogger")
            ]
        )
    ]
)
