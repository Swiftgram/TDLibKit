//
//  UserGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-18618cad
//  https://github.com/tdlib/td/tree/18618cad
//

import Foundation


/// Represents a gift received by a user
public struct UserGift: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the gift was sent
    public let date: Int

    /// The gift
    public let gift: Gift

    /// True, if the sender and gift text are shown only to the gift receiver; otherwise, everyone are able to see them
    public let isPrivate: Bool

    /// True, if the gift is displayed on the user's profile page; may be false only for the receiver of the gift
    public let isSaved: Bool

    /// Identifier of the message with the gift in the chat with the sender of the gift; can be 0 or an identifier of a deleted message; only for the gift receiver
    public let messageId: Int64

    /// Number of Telegram Stars that can be claimed by the receiver instead of the gift; only for the gift receiver
    public let sellStarCount: Int64

    /// Identifier of the user that sent the gift; 0 if unknown
    public let senderUserId: Int64

    /// Message added to the gift
    public let text: FormattedText


    public init(
        date: Int,
        gift: Gift,
        isPrivate: Bool,
        isSaved: Bool,
        messageId: Int64,
        sellStarCount: Int64,
        senderUserId: Int64,
        text: FormattedText
    ) {
        self.date = date
        self.gift = gift
        self.isPrivate = isPrivate
        self.isSaved = isSaved
        self.messageId = messageId
        self.sellStarCount = sellStarCount
        self.senderUserId = senderUserId
        self.text = text
    }
}

