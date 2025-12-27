//
//  MessageEffectType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Describes type of emoji effect
public indirect enum MessageEffectType: Codable, Equatable, Hashable {

    /// An effect from an emoji reaction
    case messageEffectTypeEmojiReaction(MessageEffectTypeEmojiReaction)

    /// An effect from a premium sticker
    case messageEffectTypePremiumSticker(MessageEffectTypePremiumSticker)


    private enum Kind: String, Codable {
        case messageEffectTypeEmojiReaction
        case messageEffectTypePremiumSticker
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageEffectTypeEmojiReaction:
            let value = try MessageEffectTypeEmojiReaction(from: decoder)
            self = .messageEffectTypeEmojiReaction(value)
        case .messageEffectTypePremiumSticker:
            let value = try MessageEffectTypePremiumSticker(from: decoder)
            self = .messageEffectTypePremiumSticker(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageEffectTypeEmojiReaction(let value):
            try container.encode(Kind.messageEffectTypeEmojiReaction, forKey: .type)
            try value.encode(to: encoder)
        case .messageEffectTypePremiumSticker(let value):
            try container.encode(Kind.messageEffectTypePremiumSticker, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An effect from an emoji reaction
public struct MessageEffectTypeEmojiReaction: Codable, Equatable, Hashable {

    /// Effect animation for the effect in TGS format
    public let effectAnimation: Sticker

    /// Select animation for the effect in TGS format
    public let selectAnimation: Sticker


    public init(
        effectAnimation: Sticker,
        selectAnimation: Sticker
    ) {
        self.effectAnimation = effectAnimation
        self.selectAnimation = selectAnimation
    }
}

/// An effect from a premium sticker
public struct MessageEffectTypePremiumSticker: Codable, Equatable, Hashable {

    /// The premium sticker. The effect can be found at sticker.full_type.premium_animation
    public let sticker: Sticker


    public init(sticker: Sticker) {
        self.sticker = sticker
    }
}

