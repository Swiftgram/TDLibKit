//
//  AttachmentMenuBotColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Describes a color to highlight a bot added to attachment menu
public struct AttachmentMenuBotColor: Codable, Equatable, Hashable {

    /// Color in the RGB format for dark themes
    public let darkColor: Int

    /// Color in the RGB format for light themes
    public let lightColor: Int


    public init(
        darkColor: Int,
        lightColor: Int
    ) {
        self.darkColor = darkColor
        self.lightColor = lightColor
    }
}

