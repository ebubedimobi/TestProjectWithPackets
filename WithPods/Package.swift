// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WithPods",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WithPods",
            targets: ["WithPods"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/ReactiveX/RxSwift.git", ._exactItem("5.0.0")),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/RxSwiftCommunity/RxKeyboard.git", from: "1.0.0"),
        .package(url: "https://github.com/guoyingtao/Mantis.git", from: "1.6.2"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.2.0")),
        .package(path: "/WithoutPods")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WithPods",
            dependencies: ["RxSwift", "SnapKit", "RxKeyboard", "Mantis", "Alamofire", "WithoutPods", .product(name: "RxCocoa", package: "RxSwift")]),
        .testTarget(
            name: "WithPodsTests",
            dependencies: ["WithPods"]),
    ]
)
