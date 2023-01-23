// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.20"
let checksum = "f7dc24f635f4862802939bbeff19342adbe3c5336c87438b5e9cd3cfbe770e6b"

let package = Package(
    name: "WorkoutsPlayerWrapper",
    platforms: [
        .iOS(.v15),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "WorkoutsPlayerWrapper",
            targets: ["WorkoutsPlayer", "MuuvUtilities"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),        
    ],
    targets: [
        .target(
            name: "WorkoutsPlayerWrapper",
            dependencies: ["WorkoutsPlayer", "MuuvUtilities"],
            path: "Sources"
        ),
        .binaryTarget(
            name: "WorkoutsPlayer",
            url: "https://github.com/muuvlabs/af-workouts-player-ios/releases/download/\(version)/WorkoutsPlayer_\(version).xcframework.zip",
            checksum: checksum
        ),
        .binaryTarget(
            name: "MuuvUtilities",
            url: "https://github.com/muuvlabs/muuv-utilities-ios/releases/download/0.0.4/MuuvUtilities_0.0.4.xcframework.zip",
            checksum: "e398f97d460cf9a6e120833028f6d7c3e0ad3d597c408ef7c0f0239fc25acbd0"
        )
    ]
)
