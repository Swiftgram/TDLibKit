//
//  GetCurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-521aed8e
//  https://github.com/tdlib/td/tree/521aed8e
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

