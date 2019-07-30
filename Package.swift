// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwiftHEXColors",
    products: [
        .library(
            name: "SwiftHEXColors",
            targets: ["SwiftHEXColors"]),
    ],
    targets: [
        .target(
            name: "SwiftHEXColors",
            dependencies: []),
        .testTarget(
            name: "SwiftHEXColorsTests",
            dependencies: ["SwiftHEXColors"]),
    ]
)
