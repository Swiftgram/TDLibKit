//
//  SendGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Sends a gift to another user. May return an error with a message "STARGIFT_USAGE_LIMITED" if the gift was sold out
public struct SendGift: Codable, Equatable, Hashable {

    /// Identifier of the gift to send
    public let giftId: TdInt64?

    /// Pass true to show the current user as sender and gift text only to the gift receiver; otherwise, everyone will be able to see them
    public let isPrivate: Bool?

    /// Text to show along with the gift; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
    public let text: FormattedText?

    /// Identifier of the user that will receive the gift
    public let userId: Int64?


    public init(
        giftId: TdInt64?,
        isPrivate: Bool?,
        text: FormattedText?,
        userId: Int64?
    ) {
        self.giftId = giftId
        self.isPrivate = isPrivate
        self.text = text
        self.userId = userId
    }
}

