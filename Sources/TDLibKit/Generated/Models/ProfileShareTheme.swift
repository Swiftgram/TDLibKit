//
//  ProfileShareTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-74e914ee
//  https://github.com/tdlib/td/tree/74e914ee
//

import Foundation


/// Describes a theme of the screen for sharing a link to a user or a chat
public indirect enum ProfileShareTheme: Codable, Equatable, Hashable {

    /// The default theme
    case profileShareThemeDefault

    /// A theme with emoji placed on a background
    case profileShareThemeEmoji(ProfileShareThemeEmoji)

    /// A theme based on an upgraded gift owned by the user or the chat
    case profileShareThemeUpgradedGift(ProfileShareThemeUpgradedGift)


    private enum Kind: String, Codable {
        case profileShareThemeDefault
        case profileShareThemeEmoji
        case profileShareThemeUpgradedGift
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .profileShareThemeDefault:
            self = .profileShareThemeDefault
        case .profileShareThemeEmoji:
            let value = try ProfileShareThemeEmoji(from: decoder)
            self = .profileShareThemeEmoji(value)
        case .profileShareThemeUpgradedGift:
            let value = try ProfileShareThemeUpgradedGift(from: decoder)
            self = .profileShareThemeUpgradedGift(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .profileShareThemeDefault:
            try container.encode(Kind.profileShareThemeDefault, forKey: .type)
        case .profileShareThemeEmoji(let value):
            try container.encode(Kind.profileShareThemeEmoji, forKey: .type)
            try value.encode(to: encoder)
        case .profileShareThemeUpgradedGift(let value):
            try container.encode(Kind.profileShareThemeUpgradedGift, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A theme with emoji placed on a background
public struct ProfileShareThemeEmoji: Codable, Equatable, Hashable {

    /// Identifier of the backdrop used as background; must be ignored if use_default_background is true. Use getProfileShareThemeBackdrops to get details about the backdrop
    public let backgroundBackdropId: Int

    /// The emoji; 0-6 regular or custom emoji. If empty, then use_default_background is false
    public let emojis: [EmojiType]

    /// True, if the default background is used; otherwise, the backdrop with identifier background_backdrop_id is used as background
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

/// A theme based on an upgraded gift owned by the user or the chat
public struct ProfileShareThemeUpgradedGift: Codable, Equatable, Hashable {

    /// The upgraded gift
    public let gift: UpgradedGift


    public init(gift: UpgradedGift) {
        self.gift = gift
    }
}

