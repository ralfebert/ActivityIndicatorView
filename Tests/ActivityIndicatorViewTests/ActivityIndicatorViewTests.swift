import XCTest
@testable import ActivityIndicatorView

final class ActivityIndicatorViewTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(ActivityIndicatorView(isAnimating: .constant(true)).isAnimating, true)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
