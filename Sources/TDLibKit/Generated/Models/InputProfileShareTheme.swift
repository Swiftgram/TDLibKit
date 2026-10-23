//
//  InputProfileShareTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Describes a theme of the screen for sharing a link to a user or a chat to be set
public indirect enum InputProfileShareTheme: Codable, Equatable, Hashable {

    /// A theme with emoji placed on a background
    case inputProfileShareThemeEmoji(InputProfileShareThemeEmoji)

    /// A theme based on an upgraded gift
    case inputProfileShareThemeUpgradedGift(InputProfileShareThemeUpgradedGift)


    private enum Kind: String, Codable {
        case inputProfileShareThemeEmoji
        case inputProfileShareThemeUpgradedGift
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputProfileShareThemeEmoji:
            let value = try InputProfileShareThemeEmoji(from: decoder)
            self = .inputProfileShareThemeEmoji(value)
        case .inputProfileShareThemeUpgradedGift:
            let value = try InputProfileShareThemeUpgradedGift(from: decoder)
            self = .inputProfileShareThemeUpgradedGift(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputProfileShareThemeEmoji(let value):
            try container.encode(Kind.inputProfileShareThemeEmoji, forKey: .type)
            try value.encode(to: encoder)
        case .inputProfileShareThemeUpgradedGift(let value):
            try container.encode(Kind.inputProfileShareThemeUpgradedGift, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A theme with emoji placed on a background
public struct InputProfileShareThemeEmoji: Codable, Equatable, Hashable {

    /// Identifier of the backdrop to be used as background; ignored if use_default_background is true. Use getProfileShareThemeBackdrops to get the list of available backdrops
    public let backgroundBackdropId: Int

    /// The emoji; 0-6 regular or custom emoji. If empty, then use_default_background must be false
    public let emojis: [EmojiType]

    /// Pass true to use the default background; otherwise, the backdrop with identifier background_backdrop_id will be used as background
    public let useDefaultBackground: Bool


    public init(
        backgroundBackdropId: Int,
        emojis: [EmojiType],
        useDefaultBackground: Bool
    ) {
        self.backgroundBackdropId = backgroundBackdropId
        self.emojis = emojis
        self.useDefaultBackground = useDefaultBackground
    }
}

/// A theme based on an upgraded gift
public struct InputProfileShareThemeUpgradedGift: Codable, Equatable, Hashable {

    /// Identifier of the upgraded gift, which is owned by the user or the chat, for which the theme is set
    public let receivedGiftId: String


    public init(receivedGiftId: String) {
        self.receivedGiftId = receivedGiftId
    }
}

