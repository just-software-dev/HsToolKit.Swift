// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "HsToolKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "HsToolKit",
            targets: ["HsToolKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/just-software-dev/HsExtensions.Swift.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "HsToolKit",
            dependencies: [
                "Alamofire",
                "ObjectMapper",
                .product(name: "HsExtensions", package: "HsExtensions.Swift"),
            ]
        ),
    ]
)
