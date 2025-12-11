//
//  CurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
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

