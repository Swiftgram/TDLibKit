//
//  GetCurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
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

