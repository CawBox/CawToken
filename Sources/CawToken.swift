import Foundation

public struct CawToken {
    fileprivate static let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
    public let value: String

    public static func create(_ length: Int) -> String {
        return CawToken(length: length).value
    }

    public init(length: Int) {
        let max = UInt32(CawToken.characters.count)
        let results: [String] = (0 ..< length).map { _ in
            let position = Int(arc4random_uniform(max))
            let character = CawToken.characters.index(CawToken.characters.startIndex, offsetBy: position)
            return String(CawToken.characters[character])
        }

        value = results.joined()
    }
}
