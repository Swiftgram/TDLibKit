//
//  AttachmentMenuBotColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Describes a color to highlight a bot added to attachment menu
public struct AttachmentMenuBotColor: Codable, Equatable, Hashable {

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

