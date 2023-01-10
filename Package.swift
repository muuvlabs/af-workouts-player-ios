// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.14"
let checksum = "c7e6d479f447e666346317120f9f1b10968b84675f359ad5b0a079be02c31751"

let package = Package(
    name: "WorkoutsPlayer",
    platforms: [
        .iOS(.v15),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "WorkoutsPlayer",
            targets: ["Dependencies", "WorkoutsPlayer"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/muuvlabs/workouts-player-core-internal-ios.git",
            branch: "main"
        )
    ],
    targets: [
        .target(
            name: "Dependencies",
            dependencies: [
                .product(
                    name: "WorkoutsPlayerCore",
                    package: "workouts-player-core-internal-ios",
                    condition: .when(platforms: [.iOS])
                )
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "WorkoutsPlayer",
            url: "https://github.com/muuvlabs/af-workouts-player-ios/releases/download/\(version)/WorkoutsPlayer_\(version).xcframework.zip",
            checksum: checksum
        )
    ]
)
