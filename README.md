# KakaoSDK 2.0 SwiftPM

본 프로젝트는 Kakao에서 SPM을 지원하면 종료될 프로젝트입니다. 

## 참고사항

* KakaoSDK 2.0 SwiftPM 프로젝트는 [KakaoSDK 2.0.1](https://github.com/CocoaPods/Specs/blob/0f3c2bb5772d6103995122cf24d8af43b0b14ca5/Specs/a/0/c/KakaoSDK/2.0.1/KakaoSDK.podspec.json) 버전을 사용합니다.
* KakaoSDK 2.0는 [`DynamicCodable`](https://github.com/levantAJ/AnyCodable), `Alamofire`를 의존성으로 가집니다. `DynamicCodable` 이 SwiftPM을 지원하지 않아, 코드를 이 저장소에 내장하여 사용하도록 하였습니다. 
* KakaoSDK 2.0 소스에서 `import UIKit` 코드가 없어 빌드가 되지 않아, 일부 소스에 `import UIKit` 코드를 추가하였습니다.
* 라이선스는 cocoapods에 올라가 있는 KakaoSDK 2.0 spec에 있는 라이선스인 MIT를 따릅니다.
  * [KakaoSDK](https://github.com/CocoaPods/Specs/blob/0f3c2bb5772d6103995122cf24d8af43b0b14ca5/Specs/a/0/c/KakaoSDK/2.0.1/KakaoSDK.podspec.json)
  * [KakaoSDKCommon](https://github.com/CocoaPods/Specs/blob/156e48abc23bb2c307b8c4ad8fc0710250c8f447/Specs/a/d/6/KakaoSDKCommon/2.0.1/KakaoSDKCommon.podspec.json)
  * [KakaoSDKAuth](https://github.com/CocoaPods/Specs/blob/066022241602c71150cef70355599a96f2ae8fce/Specs/a/6/c/KakaoSDKAuth/2.0.1/KakaoSDKAuth.podspec.json)
  * [KakaoSDKTemplate](https://github.com/CocoaPods/Specs/blob/3cff3e0e9802fadc522ada1ef99833670d66e12c/Specs/6/d/3/KakaoSDKTemplate/2.0.1/KakaoSDKTemplate.podspec.json)
  * [KakaoSDKLink](https://github.com/CocoaPods/Specs/blob/4fff7e16aa9e6f5912a208a9ec26117f70ea1ccd/Specs/1/a/0/KakaoSDKLink/2.0.1/KakaoSDKLink.podspec.json)
  * [KakaoSDKUser](https://github.com/CocoaPods/Specs/blob/f308a42a52d0b81c57a3105fcfcb48525cf55628/Specs/3/0/f/KakaoSDKUser/2.0.1/KakaoSDKUser.podspec.json)
  * [KakaoSDKTalk](https://github.com/CocoaPods/Specs/blob/f308a42a52d0b81c57a3105fcfcb48525cf55628/Specs/3/9/b/KakaoSDKTalk/2.0.1/KakaoSDKTalk.podspec.json)
  * [KakaoSDKStory](https://github.com/CocoaPods/Specs/blob/71131e1a14391398080269dd3b94759ddaeec72e/Specs/9/5/5/KakaoSDKStory/2.0.1/KakaoSDKStory.podspec.json)
  * [KakaoSDKNavi](https://github.com/CocoaPods/Specs/blob/5bda597f145e995ebc9fe78b1fd80cee655dbd2a/Specs/8/5/9/KakaoSDKNavi/2.0.1/KakaoSDKNavi.podspec.json)

## License

KakaoSDK-SwiftPM is released under the MIT license. [See LICENSE](https://github.com/minsOne/KakaoSDK-SwiftPM/blob/master/LICENSE) for details.
