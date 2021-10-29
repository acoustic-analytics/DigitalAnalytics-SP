// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2021 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.

import PackageDescription

print("Using DAMod release version, if you need debug version use https://github.com/acoustic-analytics/DigitalAnalyticsDebug-SP")
let package = Package(
    name: "DAMod",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DAMod",
            targets: ["DAMod", "EOCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "DAMod",
            url: "https://github.com/acoustic-analytics/DigitalAnalytics/releases/download/1.1.49/DAMod_XCFramework_Release.zip",
            checksum: "92498cefd8de263b396ab3263617861949ab89123da234f81dea4f07306982dd"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.72/EOCore_XCFramework_Release.zip",
            checksum: "f9e0e17504e09b1ea520bd82047944e5908abe25fe0d2a65c924973386542de5"),
    ]
)
