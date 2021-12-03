//
//  ChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-8d7bda00
//  https://github.com/tdlib/td/tree/8d7bda00
//

import Foundation


/// Describes a chat theme
public struct ChatTheme: Codable, Equatable {

    /// Theme settings for a dark chat theme
    public let darkSettings: ThemeSettings

    /// Theme settings for a light chat theme
    public let lightSettings: ThemeSettings

    /// Theme name
    public let name: String


    public init(
        darkSettings: ThemeSettings,
        lightSettings: ThemeSettings,
        name: String
    ) {
        self.darkSettings = darkSettings
        self.lightSettings = lightSettings
        self.name = name
    }
}

