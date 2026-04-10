//
//  GiftChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Describes a chat theme based on an upgraded gift
public struct GiftChatTheme: Codable, Equatable, Hashable {

    /// Theme settings for a dark chat theme
    public let darkSettings: ThemeSettings

    /// The gift
    public let gift: UpgradedGift

    /// Theme settings for a light chat theme
    public let lightSettings: ThemeSettings


    public init(
        darkSettings: ThemeSettings,
        gift: UpgradedGift,
        lightSettings: ThemeSettings
    ) {
        self.darkSettings = darkSettings
        self.gift = gift
        self.lightSettings = lightSettings
    }
}

