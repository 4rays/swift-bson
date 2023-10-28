// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "swift-bson",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v13)
    ],
    products: [
        .library(name: "SwiftBSON", targets: ["SwiftBSON"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio", .upToNextMajor(from: "2.32.0")),
        .package(url: "https://github.com/swift-extras/swift-extras-json", .upToNextMinor(from: "0.6.0")),
        .package(url: "https://github.com/swift-extras/swift-extras-base64", .upToNextMinor(from: "0.5.0"))
    ],
    targets: [
        .target(name: "SwiftBSON", dependencies: [
            .product(name: "NIOCore", package: "swift-nio"),
            .product(name: "NIOConcurrencyHelpers", package: "swift-nio"),
            .product(name: "ExtrasJSON", package: "swift-extras-json"),
            .product(name: "ExtrasBase64", package: "swift-extras-base64")
        ])
    ]
)
