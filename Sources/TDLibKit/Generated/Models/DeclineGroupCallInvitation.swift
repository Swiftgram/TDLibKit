//
//  DeclineGroupCallInvitation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
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

