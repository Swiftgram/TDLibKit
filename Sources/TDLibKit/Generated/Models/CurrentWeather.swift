//
//  CurrentWeather.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
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

