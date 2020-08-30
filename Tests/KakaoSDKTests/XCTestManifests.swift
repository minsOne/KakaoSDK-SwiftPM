import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(KakaoSDKTests.allTests),
    ]
}
#endif
