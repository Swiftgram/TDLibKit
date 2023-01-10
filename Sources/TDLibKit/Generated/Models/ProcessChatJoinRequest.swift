//
//  ProcessChatJoinRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-ed2644c2
//  https://github.com/tdlib/td/tree/ed2644c2
//

import Foundation


/// Handles a pending join request in a chat
public struct ProcessChatJoinRequest: Codable, Equatable {

    /// Pass true to approve the request; pass false to decline it
    public let approve: Bool?

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the user that sent the request
    public let userId: Int64?


    public init(
        approve: Bool?,
        chatId: Int64?,
        userId: Int64?
    ) {
        self.approve = approve
        self.chatId = chatId
        self.userId = userId
    }
}

