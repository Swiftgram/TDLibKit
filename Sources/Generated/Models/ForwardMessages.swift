//
//  ForwardMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
public struct ForwardMessages: Codable {

    /// Identifier of the chat to which to forward messages
    public let chatId: Int64

    /// Identifier of the chat from which to forward messages
    public let fromChatId: Int64

    /// Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously
    public let messageIds: [Int64]

    /// Options to be used to send the messages
    public let options: MessageSendOptions

    /// True, if media caption of message copies needs to be removed. Ignored if send_copy is false
    public let removeCaption: Bool

    /// True, if content of the messages needs to be copied without links to the original messages. Always true if the messages are forwarded to a secret chat
    public let sendCopy: Bool


    public init(
        chatId: Int64,
        fromChatId: Int64,
        messageIds: [Int64],
        options: MessageSendOptions,
        removeCaption: Bool,
        sendCopy: Bool
    ) {
        self.chatId = chatId
        self.fromChatId = fromChatId
        self.messageIds = messageIds
        self.options = options
        self.removeCaption = removeCaption
        self.sendCopy = sendCopy
    }
}

