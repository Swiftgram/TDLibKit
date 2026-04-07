//
//  AddPollOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Adds an option to a poll
public struct AddPollOption: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the poll belongs
    public let chatId: Int64?

    /// Identifier of the message containing the poll. Use messagePoll.can_add_option to check whether an option can be added
    public let messageId: Int64?

    /// The new option
    public let option: InputPollOption?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        option: InputPollOption?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.option = option
    }
}

