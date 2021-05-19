//
//  RootViewModel.swift
//  Rainstorm
//
//  Created by Somnath on 19/05/21.
//  Copyright © 2021 Cocoacasts. All rights reserved.
//

import Foundation

class RootViewModel {
    
    // MARK: - Type Aliases
    typealias didFetchWeatherDataCompletion = (Data?, Error?)-> Void
    
    // MARK: - Properties
    var didFetchWeatherData: didFetchWeatherDataCompletion?
    
    // MARK: - Initialization
    init() {
        // Fetch Weather Data
        fetchWeatherData()
    }
    
    // MARK: - Helper Methods
    
    private func fetchWeatherData() {
        // Initialize Weather Request
        let weatherRequest = WeatherRequest(baseUrl: WeatherService.authenticatedBaseUrl, location: Defaults.location)

        // Create Data Task
        URLSession.shared.dataTask(with: weatherRequest.url) { [weak self] (data, response, error) in
            if let error = error {
                self?.didFetchWeatherData?(nil, error)
            } else if let data = data {
                self?.didFetchWeatherData?(data, nil)
            } else {
                self?.didFetchWeatherData?(nil, nil)
            }
        }.resume()
    }
}
