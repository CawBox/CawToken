import XCTest
@testable import CawToken

class CawTokenTests: XCTestCase {
    func testStaticGeneratedLength() {
        let token = CawToken.create (10)
        XCTAssertEqual(token.count, 10)
    }

    func testGeneratedLength() {
        let token = CawToken (length: 10)
        XCTAssertEqual(token.value.count, 10)
    }

    static var allTests = [
        ("testStaticGeneratedLength", testStaticGeneratedLength),
        ("testGeneratedLength", testGeneratedLength),
    ]
}
