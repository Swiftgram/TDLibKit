//
//  GetCurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Returns the current weather in the given location
public struct GetCurrentWeather: Codable, Equatable, Hashable {

    /// The location
    public let location: Location?


    public init(location: Location?) {
        self.location = location
    }
}

