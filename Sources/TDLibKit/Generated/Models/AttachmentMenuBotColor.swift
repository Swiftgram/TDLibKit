//
//  AttachmentMenuBotColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
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

