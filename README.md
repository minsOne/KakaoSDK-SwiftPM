# KakaoSDK 2.0 SwiftPM

본 프로젝트는 Kakao에서 SPM을 지원하면 종료될 프로젝트입니다. 

## 참고사항

* KakaoSDK 2.0 SwiftPM 프로젝트는 [KakaoSDK 2.5.3](https://github.com/CocoaPods/Specs/blob/master/Specs/a/0/c/KakaoSDK/2.5.3/KakaoSDK.podspec.json) 버전을 사용합니다.
* KakaoSDK 2.0는 [`DynamicCodable`](https://github.com/levantAJ/AnyCodable), `Alamofire`를 의존성으로 가집니다. `DynamicCodable` 이 SwiftPM을 지원하지 않아, 코드를 이 저장소에 내장하여 사용하도록 하였습니다. 
* KakaoSDK 2.0 일부 소스에서 `import UIKit` 코드가 없어 빌드가 되지 않아, 필요한 곳에는 `import UIKit` 코드를 추가하였습니다.
* KakaoSDK 2.0 SwiftPM 라이선스는 cocoapods에 올라가 있는 KakaoSDK 2.0 spec에 정의된 MIT 라이선스를 따릅니다.
  * [KakaoSDK](https://github.com/CocoaPods/Specs/blob/master/Specs/a/0/c/KakaoSDK/2.5.3/KakaoSDK.podspec.json)
  * [KakaoSDKCommon](https://github.com/CocoaPods/Specs/blob/master/Specs/a/d/6/KakaoSDKCommon/2.5.3/KakaoSDKCommon.podspec.json)
  * [KakaoSDKAuth](https://github.com/CocoaPods/Specs/blob/master/Specs/a/6/c/KakaoSDKAuth/2.5.3/KakaoSDKAuth.podspec.json)
  * [KakaoSDKTemplate](https://github.com/CocoaPods/Specs/blob/master/Specs/6/d/3/KakaoSDKTemplate/2.5.3/KakaoSDKTemplate.podspec.json)
  * [KakaoSDKLink](https://github.com/CocoaPods/Specs/blob/master/Specs/1/a/0/KakaoSDKLink/2.5.3/KakaoSDKLink.podspec.json)
  * [KakaoSDKUser](https://github.com/CocoaPods/Specs/blob/master/Specs/3/0/f/KakaoSDKUser/2.5.3/KakaoSDKUser.podspec.json)
  * [KakaoSDKTalk](https://github.com/CocoaPods/Specs/blob/master/Specs/3/9/b/KakaoSDKTalk/2.5.3/KakaoSDKTalk.podspec.json)
  * [KakaoSDKStory](https://github.com/CocoaPods/Specs/blob/master/Specs/9/5/5/KakaoSDKStory/2.5.3/KakaoSDKStory.podspec.json)
  * [KakaoSDKNavi](https://github.com/CocoaPods/Specs/blob/master/Specs/8/5/9/KakaoSDKNavi/2.5.3/KakaoSDKNavi.podspec.json)

## License

KakaoSDK-SwiftPM is released under the MIT license. [See LICENSE](https://github.com/minsOne/KakaoSDK-SwiftPM/blob/master/LICENSE) for details.
