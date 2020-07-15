//
//  Data.swift
//  Weather Map
//
//  Created by Mike Van Amburg on 7/15/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import Foundation


struct WeatherApi: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    var temp: Double
    var feelsLike: Double
    var min: Double
    var presure: Double
    var humidity: Double
}
