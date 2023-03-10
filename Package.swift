// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WorkoutsPlayer",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WorkoutsPlayer",
            targets: ["WorkoutsPlayer", "WorkoutsPlayerAnytimeFitnessInternal", "WorkoutsPlayerCoreInternal", "MuuvEndpointsRenamedForCore", "MuuvEndpointsRenamedForAFWP", "MuuvUtilitiesRenamedForAFWP", "MuuvUtilitiesRenamedForCore", "LottieForAFWP", "MuuvUtilitiesSwiftUI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WorkoutsPlayer",
            dependencies: [],
            path: "WorkoutsPlayer"),
        .binaryTarget(
            name: "WorkoutsPlayerAnytimeFitnessInternal",
            path: "WorkoutsPlayer/Dependencies/WorkoutsPlayerAnytimeFitnessInternal.xcframework"
        ),
        .binaryTarget(
            name: "WorkoutsPlayerCoreInternal",
            path: "WorkoutsPlayer/Dependencies/WorkoutsPlayerCoreInternal.xcframework"
        ),
        .binaryTarget(
            name: "MuuvEndpointsRenamedForAFWP",
            path: "WorkoutsPlayer/Dependencies/MuuvEndpointsRenamedForAFWP.xcframework"
        ),
        .binaryTarget(
            name: "MuuvEndpointsRenamedForCore",
            path: "WorkoutsPlayer/Dependencies/MuuvEndpointsRenamedForCore.xcframework"
        ),
        .binaryTarget(
            name: "MuuvUtilitiesRenamedForAFWP",
            path: "WorkoutsPlayer/Dependencies/MuuvUtilitiesRenamedForAFWP.xcframework"
        ),
        .binaryTarget(
            name: "MuuvUtilitiesRenamedForCore",
            path: "WorkoutsPlayer/Dependencies/MuuvUtilitiesRenamedForCore.xcframework"
        ),
        .binaryTarget(
            name: "LottieForAFWP",
            path: "WorkoutsPlayer/Dependencies/LottieForAFWP.xcframework"
        ),
        .binaryTarget(
            name: "MuuvUtilitiesSwiftUI",
            path: "WorkoutsPlayer/Dependencies/MuuvUtilitiesSwiftUI.xcframework"
        ),
    ]
)
