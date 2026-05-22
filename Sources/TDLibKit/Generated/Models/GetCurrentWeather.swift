//
//  GetCurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-e0943d06
//  https://github.com/tdlib/td/tree/e0943d06
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

