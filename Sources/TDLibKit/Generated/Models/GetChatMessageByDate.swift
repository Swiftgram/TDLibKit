//
//  GetChatMessageByDate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Returns the last message sent in a chat no later than the specified date
public struct GetChatMessageByDate: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) relative to which to search for messages
    public let date: Int


    public init(
        chatId: Int64,
        date: Int
    ) {
        self.chatId = chatId
        self.date = date
    }
}

