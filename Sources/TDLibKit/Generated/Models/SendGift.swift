//
//  SendGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Sends a gift to another user or channel chat. May return an error with a message "STARGIFT_USAGE_LIMITED" if the gift was sold out
public struct SendGift: Codable, Equatable, Hashable {

    /// Identifier of the gift to send
    public let giftId: TdInt64?

    /// Pass true to show gift text and sender only to the gift receiver; otherwise, everyone will be able to see them
    public let isPrivate: Bool?

    /// Identifier of the user or the channel chat that will receive the gift; limited gifts can't be sent to channel chats
    public let ownerId: MessageSender?

    /// Pass true to additionally pay for the gift upgrade and allow the receiver to upgrade it for free
    public let payForUpgrade: Bool?

    /// Text to show along with the gift; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed. Must be empty if the receiver enabled paid messages
    public let text: FormattedText?


    public init(
        giftId: TdInt64?,
        isPrivate: Bool?,
        ownerId: MessageSender?,
        payForUpgrade: Bool?,
        text: FormattedText?
    ) {
        self.giftId = giftId
        self.isPrivate = isPrivate
        self.ownerId = ownerId
        self.payForUpgrade = payForUpgrade
        self.text = text
    }
}

