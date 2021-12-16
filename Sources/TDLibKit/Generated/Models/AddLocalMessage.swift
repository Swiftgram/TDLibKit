//
//  AddLocalMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-83bd3e33
//  https://github.com/tdlib/td/tree/83bd3e33
//

import Foundation


/// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
public struct AddLocalMessage: Codable, Equatable {

    /// Target chat
    public let chatId: Int64?

    /// Pass true to disable notification for the message
    public let disableNotification: Bool?

    /// The content of the message to be added
    public let inputMessageContent: InputMessageContent?

    /// Identifier of the message to reply to or 0
    public let replyToMessageId: Int64?

    /// Identifier of the sender of the message
    public let senderId: MessageSender?


    public init(
        chatId: Int64?,
        disableNotification: Bool?,
        inputMessageContent: InputMessageContent?,
        replyToMessageId: Int64?,
        senderId: MessageSender?
    ) {
        self.chatId = chatId
        self.disableNotification = disableNotification
        self.inputMessageContent = inputMessageContent
        self.replyToMessageId = replyToMessageId
        self.senderId = senderId
    }
}

