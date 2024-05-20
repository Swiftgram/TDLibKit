//
//  EmojiReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about an emoji reaction
public struct EmojiReaction: Codable, Equatable, Hashable {

    /// Activate animation for the reaction
    public let activateAnimation: Sticker

    /// Appear animation for the reaction
    public let appearAnimation: Sticker

    /// Around animation for the reaction; may be null
    public let aroundAnimation: Sticker?

    /// Center animation for the reaction; may be null
    public let centerAnimation: Sticker?

    /// Effect animation for the reaction
    public let effectAnimation: Sticker

    /// Text representation of the reaction
    public let emoji: String

    /// True, if the reaction can be added to new messages and enabled in chats
    public let isActive: Bool

    /// Select animation for the reaction
    public let selectAnimation: Sticker

    /// Static icon for the reaction
    public let staticIcon: Sticker

    /// Reaction title
    public let title: String


    public init(
        activateAnimation: Sticker,
        appearAnimation: Sticker,
        aroundAnimation: Sticker?,
        centerAnimation: Sticker?,
        effectAnimation: Sticker,
        emoji: String,
        isActive: Bool,
        selectAnimation: Sticker,
        staticIcon: Sticker,
        title: String
    ) {
        self.activateAnimation = activateAnimation
        self.appearAnimation = appearAnimation
        self.aroundAnimation = aroundAnimation
        self.centerAnimation = centerAnimation
        self.effectAnimation = effectAnimation
        self.emoji = emoji
        self.isActive = isActive
        self.selectAnimation = selectAnimation
        self.staticIcon = staticIcon
        self.title = title
    }
}

