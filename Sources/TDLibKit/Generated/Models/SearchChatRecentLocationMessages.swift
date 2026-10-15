//
//  SearchChatRecentLocationMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Returns information about the recent live locations of chat members that were sent to the chat. Returns at most one live location message per user
public struct SearchChatRecentLocationMessages: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The maximum number of messages to be returned
    public let limit: Int?


    public init(
        chatId: Int64?,
        limit: Int?
    ) {
        self.chatId = chatId
        self.limit = limit
    }
}

