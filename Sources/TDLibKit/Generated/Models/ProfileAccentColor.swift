//
//  ProfileAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Contains information about supported accent color for user profile photo background
public struct ProfileAccentColor: Codable, Equatable, Hashable, Identifiable {

    /// Description of accent colors expected to be used in dark themes
    public let darkThemeColors: ProfileAccentColors

    /// Profile accent color identifier
    public let id: Int

    /// Description of accent colors expected to be used in light themes
    public let lightThemeColors: ProfileAccentColors


    public init(
        darkThemeColors: ProfileAccentColors,
        id: Int,
        lightThemeColors: ProfileAccentColors
    ) {
        self.darkThemeColors = darkThemeColors
        self.id = id
        self.lightThemeColors = lightThemeColors
    }
}

