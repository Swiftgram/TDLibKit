//
//  DeclineGroupCallInvitation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Declines an invitation to an active group call via messageGroupCall. Can be called both by the sender and the receiver of the invitation
public struct DeclineGroupCallInvitation: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64?

    /// Identifier of the message of the type messageGroupCall
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

