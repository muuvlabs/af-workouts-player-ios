// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.6"
let checksum = "0e15b88c2b330e4674b155476bfe1a889d3def38f5aa811a7dfaef308bb2852a"

let package = Package(
    name: "WorkoutPlayerCore",
    platforms: [
        .iOS(.v15),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "WorkoutPlayerCore",
            targets: ["Dependencies", "WorkoutPlayerCore"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/anytimefitness/ios-endpoints.git",
            from: "0.7.0"
        ),
        .package(
            url: "https://github.com/anytimefitness/ios-utilities.git",
            from: "0.5.0"
        )
    ],
    targets: [
        .target(
            name: "Dependencies",
            dependencies: [
                .product(
                    name: "MuuvEndpoints",
                    package: "ios-endpoints",
                    condition: .when(platforms: [.iOS])
                ),
                .product(
                    name: "MuuvUtilities",
                    package: "ios-utilities",
                    condition: .when(platforms: [.iOS])
                )
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "WorkoutPlayerCore",
            url: "https://github.com/muuvlabs/workout-player-core-binaries-ios/releases/download/\(version)/WorkoutPlayerCore.xcframework.zip",
            checksum: checksum
        )
    ]
)
