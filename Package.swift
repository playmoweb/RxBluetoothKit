// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit",
    platforms: [
        .macOS(.v10_13), .iOS(.v12), .tvOS(.v11), .watchOS(.v4)
    ],
    products: [
        .library(name: "RxBluetoothKit", targets: ["RxBluetoothKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.5.0"))
    ],
    targets: [
        .target(
            name: "RxBluetoothKit",
            dependencies: [
                "RxSwift"
            ],
            path: ".",
            exclude: [
                "ExampleApp",
                "Tests",
                "Source/Info.plist",
                "Source/RxBluetoothKit.h"
            ],
            sources: [
                "Source"
            ]
        )
    ]
)
