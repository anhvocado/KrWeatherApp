

import Foundation

struct Location: Codable, Equatable {
    let coordinate: Coordinate
    var name: String?
    
    init(coordinate: Coordinate, name: String? = nil) {
        self.coordinate = coordinate
        self.name = name
    }
}
