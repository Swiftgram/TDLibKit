//
//  ChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-d0ff90bb
//  https://github.com/tdlib/td/tree/d0ff90bb
//

import Foundation


/// Describes a chat theme
public struct ChatTheme: Codable, Equatable, Hashable {

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

