//
//  DeletePollOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Adds an option to a poll
public struct DeletePollOption: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the poll belongs
    public let chatId: Int64?

    /// Identifier of the message containing the poll
    public let messageId: Int64?

    /// Unique identifier of the option. Use pollOptionProperties.can_be_deleted to check whether the option can be deleted by the user
    public let optionId: String?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        optionId: String?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.optionId = optionId
    }
}

