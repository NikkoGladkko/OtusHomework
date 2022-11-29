// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OtusHomework",
    defaultLocalization: "ru",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "OtusHomework",
            targets: ["OtusHomework"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.6.0")),
    ],
    targets: [
        .target(
            name: "OtusHomework",
            dependencies: [
                            .product(name: "SnapKit", package: "snapkit")
                        ],
            path: "OtusHomework",
            exclude: ["SupportingFiles"],
            resources: [.process("Resources")]
		)
    ]
)
