// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.17"
let checksum = "dff476584dd276e4ea477b73d06aa57a68b1b53d178b1211e7b1219f1c6970d6"

let package = Package(
    name: "WorkoutsPlayer",
    platforms: [
        .iOS(.v15),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "WorkoutsPlayer",
            targets: ["WorkoutsPlayer"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),        
    ],
    targets: [
        .binaryTarget(
            name: "WorkoutsPlayer",
            url: "https://github.com/muuvlabs/af-workouts-player-ios/releases/download/\(version)/WorkoutsPlayer_\(version).xcframework.zip",
            checksum: checksum
        )
    ]
)
