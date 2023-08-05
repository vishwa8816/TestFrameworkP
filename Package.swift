// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestFrameworkP",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TestFrameworkP",
            targets: ["TestFrameworkP", "MyTestFramework"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TestFrameworkP",
            dependencies: []),
        .binaryTarget(name: "MyTestFramework",
                      url: "https://github.com/vishwa8816/MyTestFrameworkA/releases/download/Fifth/MyTestFramework.xcframework.zip",
                      checksum: "a7a1ee7eeb25262de4b44c513360f9683e4d32ce5ca0580b6d9a17b941c70abb")
    ]
)
