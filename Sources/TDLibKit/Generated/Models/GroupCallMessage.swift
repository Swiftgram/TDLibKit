//
//  GroupCallMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Represents a message sent in a group call
public struct GroupCallMessage: Codable, Equatable, Hashable {

    /// True, if the message can be deleted by the current user; for live stories only
    public let canBeDeleted: Bool

    /// Point in time (Unix timestamp) when the message was sent
    public let date: Int

    /// True, if the message is sent by the owner of the call and must be treated as a message of the maximum level; for live stories only
    public let isFromOwner: Bool

    /// Unique message identifier within the group call
    public let messageId: Int

    /// The number of Telegram Stars that were paid to send the message; for live stories only
    public let paidMessageStarCount: Int64

    /// Identifier of the sender of the message
    public let senderId: MessageSender

    /// Text of the message. If empty, then the message is a paid reaction in a live story
    public let text: FormattedText


    public init(
        canBeDeleted: Bool,
        date: Int,
        isFromOwner: Bool,
        messageId: Int,
        paidMessageStarCount: Int64,
        senderId: MessageSender,
        text: FormattedText
    ) {
        self.canBeDeleted = canBeDeleted
        self.date = date
        self.isFromOwner = isFromOwner
        self.messageId = messageId
        self.paidMessageStarCount = paidMessageStarCount
        self.senderId = senderId
        self.text = text
    }
}

