    import XCTest
    @testable import WithoutPods

    final class WithoutPodsTests: XCTestCase {
        func testExample() {
            // This is an example of a functional test case.
            // Use XCTAssert and related functions to verify your tests produce the correct
            // results.
            XCTAssertEqual(WithoutPods().text, "Hello, World!")
        }
    }
