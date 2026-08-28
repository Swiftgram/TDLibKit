//
//  GetPollVoteStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Returns statistics of poll votes in a poll
public struct GetPollVoteStatistics: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the poll belongs
    public let chatId: Int64?

    /// Pass true if a dark theme is used by the application
    public let isDark: Bool?

    /// Identifier of the message containing the poll. Use messageProperties.can_get_poll_vote_statistics to check whether the method can be used for a message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        isDark: Bool?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.isDark = isDark
        self.messageId = messageId
    }
}

