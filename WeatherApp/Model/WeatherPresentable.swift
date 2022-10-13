

import UIKit

protocol WeatherPresentable {
    var icon: UIImage { get }
    var temperatureText: String { get }
    var dateText: String { get }
}
