// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "orb-onboarding",
    defaultLocalization: "pt-br",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "orb-onboarding",
            targets: ["orb-onboarding"]),
    ],
    dependencies: [
        .package(name: "unicocheck-ios-spm", url: "https://github.com/acesso-io/unico-check-ios.git", from: "2.1.1")
    ],
    targets: [
        .target(
            name: "orb-onboarding",
            dependencies: ["unicocheck-ios-spm"]),
        .testTarget(
            name: "orb-onboardingTests",
            dependencies: ["orb-onboarding"]),
    ]
)
