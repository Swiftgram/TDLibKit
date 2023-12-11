//
//  AccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-1a50ec47
//  https://github.com/tdlib/td/tree/1a50ec47
//

import Foundation


/// Contains information about supported accent color for user/chat name, background of empty chat photo, replies to messages and link previews
public struct AccentColor: Codable, Equatable, Hashable, Identifiable {

    /// Identifier of a built-in color to use in places, where only one color is needed; 0-6
    public let builtInAccentColorId: Int

    /// The list of 1-3 colors in RGB format, describing the accent color, as expected to be shown in dark themes
    public let darkThemeColors: [Int]

    /// Accent color identifier
    public let id: Int

    /// The list of 1-3 colors in RGB format, describing the accent color, as expected to be shown in light themes
    public let lightThemeColors: [Int]


    public init(
        builtInAccentColorId: Int,
        darkThemeColors: [Int],
        id: Int,
        lightThemeColors: [Int]
    ) {
        self.builtInAccentColorId = builtInAccentColorId
        self.darkThemeColors = darkThemeColors
        self.id = id
        self.lightThemeColors = lightThemeColors
    }
}

