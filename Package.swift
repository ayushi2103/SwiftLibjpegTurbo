// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLibjpegturbo",
    products: [
        .library(
               name: "SwiftLibjpegturbo",
               targets: ["SwiftLibjpegturbo"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
        name: "libjpegturbo",
        dependencies: [],
        path: "Sources/libjpegturbo",
        linkerSettings:[
          .linkedLibrary("turbojpeg"),
          .unsafeFlags(["-L/usr/local/opt/jpeg-turbo/lib"]),
        ]
        ),
        .target(
            name: "SwiftLibjpegturbo",
            dependencies: ["libjpegturbo"],
            path: "Sources/SwiftLibjpegturbo"),
        .testTarget(
            name: "SwiftLibjpegturboTests",
            dependencies: ["SwiftLibjpegturbo"]),
    ]
)
