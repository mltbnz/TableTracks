//

import Foundation

enum API {
    static var baseURL: URL {
        return try! URL(string: "https://" + Configuration.value(for: "API_BASE_URL"))!
    }

    static var key: String {
        return try! Configuration.value(for: "API_KEY")
    }

    static var mapboxToken: String {
        return try! Configuration.value(for: "MAPBOX_TOKEN")
    }

    static var clientID: String {
        return try! Configuration.value(for: "CLIENTID")
    }
}
