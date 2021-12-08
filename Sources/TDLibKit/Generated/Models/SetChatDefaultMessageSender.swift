//
//  SetChatDefaultMessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-a53cb30e
//  https://github.com/tdlib/td/tree/a53cb30e
//

import Foundation


/// Changes default message sender that is chosen in a chat
public struct SetChatDefaultMessageSender: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// New default message sender in the chat
    public let defaultMessageSenderId: MessageSender?


    public init(
        chatId: Int64?,
        defaultMessageSenderId: MessageSender?
    ) {
        self.chatId = chatId
        self.defaultMessageSenderId = defaultMessageSenderId
    }
}

