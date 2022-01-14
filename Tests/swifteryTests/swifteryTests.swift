import XCTest
@testable import swiftery

final class SwifteryTests: XCTestCase {
    func testExample() throws {
        XCTAssertEqual(Swiftery().text, "Hello, World!")
    }

    func testKeys() throws {
        let swiftery = Swiftery()
        swiftery.keys()
    }
}
