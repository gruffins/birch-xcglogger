// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "BirchXCGLogger",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "BirchXCGLogger",
            targets: ["BirchXCGLogger"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gruffins/birch-swift.git", .upToNextMajor(from: "1.4.0")),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger", .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
        .target(
            name: "BirchXCGLogger",
            dependencies: [
                .product(name: "Birch", package: "birch-swift"),
                .product(name: "XCGLogger", package: "XCGLogger")
            ]
        )
    ]
)
