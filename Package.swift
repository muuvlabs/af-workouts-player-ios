// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.1"
let moduleName = "WorkoutPlayerCore"
let checksum = "22e075d0dd0de776e926199479975e8a2b81be7591a49f282ce60987063e0699"

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
