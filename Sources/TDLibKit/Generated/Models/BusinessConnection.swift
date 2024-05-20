//
//  BusinessConnection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a connection of the bot with a business account
public struct BusinessConnection: Codable, Equatable, Hashable, Identifiable {

    /// True, if the bot can send messages to the connected user; false otherwise
    public let canReply: Bool

    /// Point in time (Unix timestamp) when the connection was established
    public let date: Int

    /// Unique identifier of the connection
    public let id: String

    /// True, if the connection is enabled; false otherwise
    public let isEnabled: Bool

    /// Chat identifier of the private chat with the user
    public let userChatId: Int64

    /// Identifier of the business user that created the connection
    public let userId: Int64


    public init(
        canReply: Bool,
        date: Int,
        id: String,
        isEnabled: Bool,
        userChatId: Int64,
        userId: Int64
    ) {
        self.canReply = canReply
        self.date = date
        self.id = id
        self.isEnabled = isEnabled
        self.userChatId = userChatId
        self.userId = userId
    }
}

