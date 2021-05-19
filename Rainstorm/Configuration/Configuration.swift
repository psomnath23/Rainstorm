//
//  Configuration.swift
//  Rainstorm
//
//  Created by Bart Jacobs on 14/06/2018.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import Foundation
import CoreLocation

enum Defaults {
    
    static let location = CLLocation(latitude: 37.335114, longitude: -122.008928)
    
}

enum WeatherService {
    
    private static let apiKey = "f574c275ab31a264ea69d4ffea0fde52"
    private static let baseUrl = URL(string: "https://api.darksky.net/forecast/")!
    
    static var authenticatedBaseUrl: URL {
        return baseUrl.appendingPathComponent(apiKey)
    }
    
}
