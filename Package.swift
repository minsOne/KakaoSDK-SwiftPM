// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KakaoSDK",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: KakaoSDK.common.name,
            targets: [KakaoSDK.common.name]),
        .library(
            name: KakaoSDK.auth.name,
            targets: [KakaoSDK.auth.name]),
        .library(
            name: KakaoSDK.template.name,
            targets: [KakaoSDK.template.name]),
        .library(
            name: KakaoSDK.link.name,
            targets: [KakaoSDK.link.name]),
        .library(
            name: KakaoSDK.user.name,
            targets: [KakaoSDK.user.name]),
        .library(
            name: KakaoSDK.talk.name,
            targets: [KakaoSDK.talk.name]),
        .library(
            name: KakaoSDK.story.name,
            targets: [KakaoSDK.story.name]),
        .library(
            name: KakaoSDK.navi.name,
            targets: [KakaoSDK.navi.name]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: KakaoSDK.common.name,
            dependencies: [.alamofire],
            path: KakaoSDK.common.path),
        .target(
            name: KakaoSDK.auth.name,
            dependencies: [.alamofire, .kakaoSDKCommon],
            path: KakaoSDK.auth.path),
        .target(
            name: KakaoSDK.template.name,
            dependencies: [.kakaoSDKCommon],
            path: KakaoSDK.template.path),
        .target(
            name: KakaoSDK.link.name,
            dependencies: [.kakaoSDKCommon, .kakaoSDKTemplate],
            path: KakaoSDK.link.path),
        .target(
            name: KakaoSDK.user.name,
            dependencies: [.kakaoSDKCommon, .kakaoSDKAuth],
            path: KakaoSDK.user.path),
        .target(
            name: KakaoSDK.talk.name,
            dependencies: [.kakaoSDKCommon, .kakaoSDKAuth, .kakaoSDKTemplate],
            path: KakaoSDK.talk.path),
        .target(
            name: KakaoSDK.story.name,
            dependencies: [.kakaoSDKCommon, .kakaoSDKAuth],
            path: KakaoSDK.story.path),
        .target(
            name: KakaoSDK.navi.name,
            dependencies: [.kakaoSDKCommon, .kakaoSDKAuth],
            path: KakaoSDK.navi.path),
    ]
)


// MARK: - Utility
enum KakaoSDK: String {
    case common = "KakaoSDKCommon"
    case auth = "KakaoSDKAuth"
    case template = "KakaoSDKTemplate"
    case link = "KakaoSDKLink"
    case user = "KakaoSDKUser"
    case talk = "KakaoSDKTalk"
    case story = "KakaoSDKStory"
    case navi = "KakaoSDKNavi"
    
    var version: String { "2.5.3" }
    var path: String { "Sources/kakao-ios-sdk-\(version)/sources/\(rawValue)" }
    var name: String { rawValue }
    var dependency: Target.Dependency { .init(stringLiteral: name) }
}

extension Target.Dependency {
    static var kakaoSDKCommon: Self { Target.Dependency(stringLiteral: KakaoSDK.common.name) }
    static var kakaoSDKAuth: Self { Target.Dependency(stringLiteral: KakaoSDK.auth.name) }
    static var kakaoSDKTemplate: Self { Target.Dependency(stringLiteral: KakaoSDK.template.name) }
    static var alamofire: Self { "Alamofire" }
}

