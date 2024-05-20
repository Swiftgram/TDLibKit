//
//  AddLocalMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
public struct AddLocalMessage: Codable, Equatable, Hashable {

    /// Target chat
    public let chatId: Int64?

    /// Pass true to disable notification for the message
    public let disableNotification: Bool?

    /// The content of the message to be added
    public let inputMessageContent: InputMessageContent?

    /// Information about the message or story to be replied; pass null if none
    public let replyTo: InputMessageReplyTo?

    /// Identifier of the sender of the message
    public let senderId: MessageSender?


    public init(
        chatId: Int64?,
        disableNotification: Bool?,
        inputMessageContent: InputMessageContent?,
        replyTo: InputMessageReplyTo?,
        senderId: MessageSender?
    ) {
        self.chatId = chatId
        self.disableNotification = disableNotification
        self.inputMessageContent = inputMessageContent
        self.replyTo = replyTo
        self.senderId = senderId
    }
}

