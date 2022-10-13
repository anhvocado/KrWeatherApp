

import Foundation

enum CreationError: Error {
    case toWeatherViewController
    case toSearchViewController
    
    func andReturn() -> Never {
        fatalError("self")
    }
}
