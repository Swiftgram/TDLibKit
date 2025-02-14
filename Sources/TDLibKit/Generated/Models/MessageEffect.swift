//
//  MessageEffect.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Contains information about an effect added to a message
public struct MessageEffect: Codable, Equatable, Hashable, Identifiable {

    /// Emoji corresponding to the effect that can be used if static icon isn't available
    public let emoji: String

    /// Unique identifier of the effect
    public let id: TdInt64

    /// True, if Telegram Premium subscription is required to use the effect
    public let isPremium: Bool

    /// Static icon for the effect in WEBP format; may be null if none
    public let staticIcon: Sticker?

    /// Type of the effect
    public let type: MessageEffectType


    public init(
        emoji: String,
        id: TdInt64,
        isPremium: Bool,
        staticIcon: Sticker?,
        type: MessageEffectType
    ) {
        self.emoji = emoji
        self.id = id
        self.isPremium = isPremium
        self.staticIcon = staticIcon
        self.type = type
    }
}

