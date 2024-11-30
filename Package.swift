import PackageDescription

let package = Package(
    name: "MohammedOmerApp",
    platforms: [.macOS(.v13), .iOS(.v16)],
    products: [
        .library(
            name: "MohammedOmerApp",
            targets: ["AppCore"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "AppCore",
            dependencies: ["Algorithms", "SwiftyJSON"]
        ),
        .testTarget(
            name: "AppCoreTests",
            dependencies: ["AppCore"]
        )
    ]
)
