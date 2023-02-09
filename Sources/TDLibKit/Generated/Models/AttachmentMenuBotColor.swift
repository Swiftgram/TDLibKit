//
//  AttachmentMenuBotColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-58c4a12c
//  https://github.com/tdlib/td/tree/58c4a12c
//

import Foundation


/// Describes a color to highlight a bot added to attachment menu
public struct AttachmentMenuBotColor: Codable, Equatable {

    /// Color in the RGB24 format for dark themes
    public let darkColor: Int

    /// Color in the RGB24 format for light themes
    public let lightColor: Int


    public init(
        darkColor: Int,
        lightColor: Int
    ) {
        self.darkColor = darkColor
        self.lightColor = lightColor
    }
}

