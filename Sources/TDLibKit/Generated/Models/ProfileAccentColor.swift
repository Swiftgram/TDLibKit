//
//  ProfileAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about supported accent color for user profile photo background
public struct ProfileAccentColor: Codable, Equatable, Hashable, Identifiable {

    /// Accent colors expected to be used in dark themes
    public let darkThemeColors: ProfileAccentColors

    /// Profile accent color identifier
    public let id: Int

    /// Accent colors expected to be used in light themes
    public let lightThemeColors: ProfileAccentColors

    /// The minimum chat boost level required to use the color in a channel chat
    public let minChannelChatBoostLevel: Int

    /// The minimum chat boost level required to use the color in a supergroup chat
    public let minSupergroupChatBoostLevel: Int


    public init(
        darkThemeColors: ProfileAccentColors,
        id: Int,
        lightThemeColors: ProfileAccentColors,
        minChannelChatBoostLevel: Int,
        minSupergroupChatBoostLevel: Int
    ) {
        self.darkThemeColors = darkThemeColors
        self.id = id
        self.lightThemeColors = lightThemeColors
        self.minChannelChatBoostLevel = minChannelChatBoostLevel
        self.minSupergroupChatBoostLevel = minSupergroupChatBoostLevel
    }
}

