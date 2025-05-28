//
//  GetCurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
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

