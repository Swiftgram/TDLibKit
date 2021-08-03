//
//  AddLocalMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
public struct AddLocalMessage: Codable {

    /// Target chat
    public let chatId: Int64

    /// Pass true to disable notification for the message
    public let disableNotification: Bool

    /// The content of the message to be added
    public let inputMessageContent: InputMessageContent

    /// Identifier of the message to reply to or 0
    public let replyToMessageId: Int64

    /// The sender sender of the message
    public let sender: MessageSender


    public init(
        chatId: Int64,
        disableNotification: Bool,
        inputMessageContent: InputMessageContent,
        replyToMessageId: Int64,
        sender: MessageSender
    ) {
        self.chatId = chatId
        self.disableNotification = disableNotification
        self.inputMessageContent = inputMessageContent
        self.replyToMessageId = replyToMessageId
        self.sender = sender
    }
}

