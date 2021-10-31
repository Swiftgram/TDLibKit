//
//  ToggleMessageSenderIsBlocked.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked
public struct ToggleMessageSenderIsBlocked: Codable {

    /// New value of is_blocked
    public let isBlocked: Bool?

    /// Message Sender
    public let sender: MessageSender?


    public init(
        isBlocked: Bool?,
        sender: MessageSender?
    ) {
        self.isBlocked = isBlocked
        self.sender = sender
    }
}

