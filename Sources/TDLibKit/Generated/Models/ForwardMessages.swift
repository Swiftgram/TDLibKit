//
//  ForwardMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
public struct ForwardMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat to which to forward messages
    public let chatId: Int64?

    /// Identifier of the chat from which to forward messages
    public let fromChatId: Int64?

    /// Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously. A message can be forwarded only if message.can_be_forwarded
    public let messageIds: [Int64]?

    /// If not 0, the message thread identifier in which the message will be sent; for forum threads only
    public let messageThreadId: Int64?

    /// Options to be used to send the messages; pass null to use default options
    public let options: MessageSendOptions?

    /// Pass true to remove media captions of message copies. Ignored if send_copy is false
    public let removeCaption: Bool?

    /// Pass true to copy content of the messages without reference to the original sender. Always true if the messages are forwarded to a secret chat or are local
    public let sendCopy: Bool?


    public init(
        chatId: Int64?,
        fromChatId: Int64?,
        messageIds: [Int64]?,
        messageThreadId: Int64?,
        options: MessageSendOptions?,
        removeCaption: Bool?,
        sendCopy: Bool?
    ) {
        self.chatId = chatId
        self.fromChatId = fromChatId
        self.messageIds = messageIds
        self.messageThreadId = messageThreadId
        self.options = options
        self.removeCaption = removeCaption
        self.sendCopy = sendCopy
    }
}

