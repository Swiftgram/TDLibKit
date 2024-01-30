//
//  ProfileAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-437c2d0c
//  https://github.com/tdlib/td/tree/437c2d0c
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

    /// The minimum chat boost level required to use the color
    public let minChatBoostLevel: Int


    public init(
        darkThemeColors: ProfileAccentColors,
        id: Int,
        lightThemeColors: ProfileAccentColors,
        minChatBoostLevel: Int
    ) {
        self.darkThemeColors = darkThemeColors
        self.id = id
        self.lightThemeColors = lightThemeColors
        self.minChatBoostLevel = minChatBoostLevel
    }
}

