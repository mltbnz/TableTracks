import Foundation

struct AppSecrets: Codable {
    let mapboxAccessToken: String
    let apiClientSecret: String
    let clientID: String

    enum CodingKeys: String, CodingKey {
        case mapboxAccessToken = "MapBoxAccessToken"
        case apiClientSecret = "ApiClientSecret"
        case clientID = "ClientID"
    }
}

