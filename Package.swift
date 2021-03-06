// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Chipmunk",
    products: [
        .library(name: "Chipmunk", targets: ["Chipmunk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(name: "Chipmunk", dependencies: []),
        .target(name: "Demo", dependencies: ["Chipmunk"]),
    ]
)
