//
//  SetBusinessMessageIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Pins or unpins a message sent on behalf of a business account; for bots only
public struct SetBusinessMessageIsPinned: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which the message was sent
    public let businessConnectionId: String?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Pass true to pin the message, pass false to unpin it
    public let isPinned: Bool?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        businessConnectionId: String?,
        chatId: Int64?,
        isPinned: Bool?,
        messageId: Int64?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.isPinned = isPinned
        self.messageId = messageId
    }
}

