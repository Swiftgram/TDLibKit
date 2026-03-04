//
//  CurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Describes the current weather
public struct CurrentWeather: Codable, Equatable, Hashable {

    /// Emoji representing the weather
    public let emoji: String

    /// Temperature, in degree Celsius
    public let temperature: Double


    public init(
        emoji: String,
        temperature: Double
    ) {
        self.emoji = emoji
        self.temperature = temperature
    }
}

