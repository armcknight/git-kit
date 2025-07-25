// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "git-kit",
    products: [
        .library(name: "GitKit", targets: ["GitKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/binarybirds/shell-kit", from: "1.0.0"),
    ],
    targets: [
        .target(name: "GitKit", dependencies: [
            .product(name: "ShellKit", package: "shell-kit"),
        ]),
        .testTarget(name: "GitKitTests", dependencies: ["GitKit"]),
    ]
)
