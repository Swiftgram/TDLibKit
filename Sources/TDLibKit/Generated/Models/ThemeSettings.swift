//
//  ThemeSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes theme settings
public struct ThemeSettings: Codable, Equatable, Hashable {

    /// Theme accent color in ARGB format
    public let accentColor: Int

    /// If true, the freeform gradient fill needs to be animated on every sent message
    public let animateOutgoingMessageFill: Bool

    /// The background to be used in chats; may be null
    public let background: Background?

    /// Accent color of outgoing messages in ARGB format
    public let outgoingMessageAccentColor: Int

    /// The fill to be used as a background for outgoing messages
    public let outgoingMessageFill: BackgroundFill


    public init(
        accentColor: Int,
        animateOutgoingMessageFill: Bool,
        background: Background?,
        outgoingMessageAccentColor: Int,
        outgoingMessageFill: BackgroundFill
    ) {
        self.accentColor = accentColor
        self.animateOutgoingMessageFill = animateOutgoingMessageFill
        self.background = background
        self.outgoingMessageAccentColor = outgoingMessageAccentColor
        self.outgoingMessageFill = outgoingMessageFill
    }
}

