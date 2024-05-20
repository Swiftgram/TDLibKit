//
//  AccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
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

    /// The minimum chat boost level required to use the color in a channel chat
    public let minChannelChatBoostLevel: Int


    public init(
        builtInAccentColorId: Int,
        darkThemeColors: [Int],
        id: Int,
        lightThemeColors: [Int],
        minChannelChatBoostLevel: Int
    ) {
        self.builtInAccentColorId = builtInAccentColorId
        self.darkThemeColors = darkThemeColors
        self.id = id
        self.lightThemeColors = lightThemeColors
        self.minChannelChatBoostLevel = minChannelChatBoostLevel
    }
}

