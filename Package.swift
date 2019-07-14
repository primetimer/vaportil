// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "TILApp",
//    products: [
//        .library(name: "TILApp", targets: ["App"]),
//    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),


           .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0-rc")
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentPostgreSQL", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

//docker run --name postgres -e POSTGRES_DB=vapor -e POSTGRES_USER=vapor -e POSTGRES_PASSWORD=23822382 -p 5432:5432 -d postgres

