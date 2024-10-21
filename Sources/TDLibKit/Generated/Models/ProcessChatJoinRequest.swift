//
//  ProcessChatJoinRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Handles a pending join request in a chat
public struct ProcessChatJoinRequest: Codable, Equatable, Hashable {

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

