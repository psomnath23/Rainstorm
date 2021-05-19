//
//  WeatherRequest.swift
//  Rainstorm
//
//  Created by Bart Jacobs on 14/06/2018.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import Foundation
import CoreLocation

struct WeatherRequest {
    
    // MARK: - Properties
    
    let baseUrl: URL
    
    // MARK: -
    
    let location: CLLocation
    
    // MARK: -
    
    var latitude: Double {
        return location.coordinate.latitude
    }
    
    var longitude: Double {
        return location.coordinate.longitude
    }
 
    // MARK: -
    
    var url: URL {
        return baseUrl.appendingPathComponent("\(latitude),\(longitude)")
    }

}
