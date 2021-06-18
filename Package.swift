// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "STIErrorHandling",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "STIErrorHandling",
                 targets: ["STIErrorHandling"])
    ],
    targets: [
        .target(name: "STIErrorHandling",
                path: "Sources/STIErrorHandling",
                publicHeadersPath: "")
    ]
)
