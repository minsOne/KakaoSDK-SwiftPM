// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let kakaoSDKSourcePath = "Sources/kakao-ios-sdk-2.0.1/sources"

let package = Package(
    name: "KakaoSDK",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "KakaoSDKCommon",
            targets: ["KakaoSDKCommon"]),
        .library(
            name: "KakaoSDKAuth",
            targets: ["KakaoSDKAuth"]),
        .library(
            name: "KakaoSDKTemplate",
            targets: ["KakaoSDKTemplate"]),
        .library(
            name: "KakaoSDKLink",
            targets: ["KakaoSDKLink"]),
        .library(
            name: "KakaoSDKUser",
            targets: ["KakaoSDKUser"]),
        .library(
            name: "KakaoSDKTalk",
            targets: ["KakaoSDKTalk"]),
        .library(
            name: "KakaoSDKStory",
            targets: ["KakaoSDKStory"]),
        .library(
            name: "KakaoSDKNavi",
            targets: ["KakaoSDKNavi"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.1.0"),
        .package(path: "Package/DynamicCodable")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "KakaoSDKCommon",
            dependencies: ["Alamofire", "DynamicCodable"],
            path: "\(kakaoSDKSourcePath)/KakaoSDKCommon"),
        .target(
            name: "KakaoSDKAuth",
            dependencies: ["Alamofire", "DynamicCodable", "KakaoSDKCommon"],
            path: "\(kakaoSDKSourcePath)/KakaoSDKAuth"),
        .target(
            name: "KakaoSDKTemplate",
            dependencies: ["KakaoSDKCommon"],
            path: "\(kakaoSDKSourcePath)/KakaoSDKTemplate"),
        .target(
            name: "KakaoSDKLink",
            dependencies: ["KakaoSDKCommon", "KakaoSDKTemplate"],
            path: "\(kakaoSDKSourcePath)/KakaoSDKLink"),
        .target(
            name: "KakaoSDKUser",
            dependencies: ["KakaoSDKCommon", "KakaoSDKAuth"],
            path: "\(kakaoSDKSourcePath)/KakaoSDKUser"),
        .target(
            name: "KakaoSDKTalk",
            dependencies: ["KakaoSDKCommon", "KakaoSDKAuth", "KakaoSDKTemplate"],
            path: "\(kakaoSDKSourcePath)/KakaoSDKTalk"),
        .target(
            name: "KakaoSDKStory",
            dependencies: ["KakaoSDKCommon", "KakaoSDKAuth"],
            path: "\(kakaoSDKSourcePath)/KakaoSDKStory"),
        .target(
            name: "KakaoSDKNavi",
            dependencies: ["KakaoSDKCommon", "KakaoSDKAuth"],
            path: "\(kakaoSDKSourcePath)/KakaoSDKNavi"),
    ]
)
