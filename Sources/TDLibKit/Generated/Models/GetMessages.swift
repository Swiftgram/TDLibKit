//
//  GetMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns information about messages. If a message is not found, returns null at the corresponding position of the result
public struct GetMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat the messages belong to
    public let chatId: Int64?

    /// Identifiers of the messages to get
    public let messageIds: [Int64]?


    public init(
        chatId: Int64?,
        messageIds: [Int64]?
    ) {
        self.chatId = chatId
        self.messageIds = messageIds
    }
}

