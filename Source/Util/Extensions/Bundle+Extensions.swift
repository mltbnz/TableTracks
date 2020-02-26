import Foundation

extension Bundle {
    enum PListError: LocalizedError {
        case pathError
        case contentError
        case decodeError(errorMessage: String)
    }

    static func decodedPlist<T: Codable>(resourceName: String) throws -> T {
        guard let path = Bundle.main.path(forResource: resourceName, ofType: "plist") else {
            throw PListError.pathError
        }
        guard let plist = FileManager.default.contents(atPath: path) else {
            throw PListError.contentError
        }
        do {
            return try PropertyListDecoder().decode(T.self, from: plist)
        } catch let error {
            throw PListError.decodeError(errorMessage: error.localizedDescription)
        }
    }
}
