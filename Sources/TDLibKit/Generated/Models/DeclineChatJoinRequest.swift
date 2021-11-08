//
//  DeclineChatJoinRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-911c5fc3
//  https://github.com/tdlib/td/tree/911c5fc3
//

import Foundation


/// Declines pending join request in a chat
public struct DeclineChatJoinRequest: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the user, which request will be declined
    public let userId: Int64?


    public init(
        chatId: Int64?,
        userId: Int64?
    ) {
        self.chatId = chatId
        self.userId = userId
    }
}

