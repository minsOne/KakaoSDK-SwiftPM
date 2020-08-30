import XCTest

import DynamicCodableTests

var tests = [XCTestCaseEntry]()
tests += DynamicCodableTests.allTests()
XCTMain(tests)
