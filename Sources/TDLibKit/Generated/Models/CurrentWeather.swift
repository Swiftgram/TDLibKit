//
//  CurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
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

