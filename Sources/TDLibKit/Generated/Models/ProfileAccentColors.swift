//
//  ProfileAccentColors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about supported accent colors for user profile photo background in RGB format
public struct ProfileAccentColors: Codable, Equatable, Hashable {

    /// The list of 1-2 colors in RGB format, describing the colors, as expected to be used for the profile photo background
    public let backgroundColors: [Int]

    /// The list of 1-2 colors in RGB format, describing the colors, as expected to be shown in the color palette settings
    public let paletteColors: [Int]

    /// The list of 2 colors in RGB format, describing the colors of the gradient to be used for the unread active story indicator around profile photo
    public let storyColors: [Int]


    public init(
        backgroundColors: [Int],
        paletteColors: [Int],
        storyColors: [Int]
    ) {
        self.backgroundColors = backgroundColors
        self.paletteColors = paletteColors
        self.storyColors = storyColors
    }
}

