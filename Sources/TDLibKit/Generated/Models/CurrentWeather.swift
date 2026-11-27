//
//  CurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Describes the current weather
public struct CurrentWeather: Codable, Equatable, Hashable {

    /// Emoji representing the weather
    public let emoji: String

    /// Temperature, in degrees Celsius
    public let temperature: Double


    public init(
        emoji: String,
        temperature: Double
    ) {
        self.emoji = emoji
        self.temperature = temperature
    }
}

