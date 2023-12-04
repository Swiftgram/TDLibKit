//
//  ProfileAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-3f00bebf
//  https://github.com/tdlib/td/tree/3f00bebf
//

import Foundation


/// Contains information about supported accent color for user profile photo background
public struct ProfileAccentColor: Codable, Equatable, Hashable, Identifiable {

    /// The list of 1-3 colors in RGB format, describing the accent color, as expected to be shown in dark themes
    public let darkThemeColors: ProfileAccentColors

    /// Profile accent color identifier
    public let id: Int

    /// The list of 1-3 colors in RGB format, describing the accent color, as expected to be shown in light themes
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

