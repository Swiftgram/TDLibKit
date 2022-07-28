//
//  ForwardMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
public struct ForwardMessages: Codable, Equatable {

    /// Identifier of the chat to which to forward messages
    public let chatId: Int64?

    /// Identifier of the chat from which to forward messages
    public let fromChatId: Int64?

    /// Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously
    public let messageIds: [Int64]?

    /// Pass true to get fake messages instead of actually forwarding them
    public let onlyPreview: Bool?

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
        onlyPreview: Bool?,
        options: MessageSendOptions?,
        removeCaption: Bool?,
        sendCopy: Bool?
    ) {
        self.chatId = chatId
        self.fromChatId = fromChatId
        self.messageIds = messageIds
        self.onlyPreview = onlyPreview
        self.options = options
        self.removeCaption = removeCaption
        self.sendCopy = sendCopy
    }
}

