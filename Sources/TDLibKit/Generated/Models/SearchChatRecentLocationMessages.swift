//
//  SearchChatRecentLocationMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

