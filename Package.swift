// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let moduleName = "WorkoutPlayerCore"
let checksum = "8f42f67a0665798e1c4e149c73a36fb9dddc062bc90e3b4e077ea571613ddda1"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/muuvlabs/workout-player-core-binaries-ios/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
