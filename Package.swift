// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDKAnalytics",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SDKAnalytics",
            targets: ["SDKAnalytics"],
        ),
    ],
    dependencies: [.package(url: "https://github.com/fullstorydev/fullstory-swift-package-ios.git", branch: "master")],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SDKAnalytics",
            dependencies: [
                .product(name: "FullStory", package: "fullstory-swift-package-ios")
            ]
        ),
        .executableTarget(name: "App", dependencies: ["SDKAnalytics"]),
        .testTarget(
            name: "SDKAnalyticsTests",
            dependencies: ["SDKAnalytics"]
        ),
    ]
)
