

import Foundation

class DetailWeather {
    typealias DetailWeatherAtRow = (TitleValuePair, TitleValuePair)
    typealias TitleValuePair = (title: String, value: String)
    
    private struct Constants {
        static let humidity = "Humidity"
        static let pressure = "Pressure"
        static let seaLevelPressure = "Sea level pressure"
        static let groundLevelPressure = "Ground level pressure"
        static let wind = "Wind"
        static let clouds = "Clouds"
    }
    
    var titleValuePairs = [TitleValuePair]()
    var totalRow: Int {
        return self.titleValuePairs.count / 2
    }
    
    init(humidity: Int, regularPressure: Double, seaLevelPressure: Double, groundLevelPressure: Double, wind: Wind, clouds: Clouds) {
        titleValuePairs.append((Constants.humidity, "\(humidity: humidity)"))
        titleValuePairs.append((Constants.pressure, "\(pressure: regularPressure)"))
        titleValuePairs.append((Constants.seaLevelPressure, "\(pressure: seaLevelPressure)"))
        titleValuePairs.append((Constants.groundLevelPressure, "\(pressure: groundLevelPressure)"))
        titleValuePairs.append((Constants.wind, "\(wind: wind)"))
        titleValuePairs.append((Constants.clouds, "\(clouds: clouds)"))
    }
    
    func getDetailWeather(at rowIndex: Int) -> DetailWeatherAtRow {
        let index = rowIndex * 2
        let leftItem = titleValuePairs[index]
        let rightItem = titleValuePairs[index + 1]
        return (leftItem, rightItem)
    }
}
