//
//  BusinessConnection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Describes a connection of the bot with a business account
public struct BusinessConnection: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the connection was established
    public let date: Int

    /// Unique identifier of the connection
    public let id: String

    /// True, if the connection is enabled; false otherwise
    public let isEnabled: Bool

    /// Rights of the bot; may be null if the connection was disabled
    public let rights: BusinessBotRights?

    /// Chat identifier of the private chat with the user
    public let userChatId: Int64

    /// Identifier of the business user that created the connection
    public let userId: Int64


    public init(
        date: Int,
        id: String,
        isEnabled: Bool,
        rights: BusinessBotRights?,
        userChatId: Int64,
        userId: Int64
    ) {
        self.date = date
        self.id = id
        self.isEnabled = isEnabled
        self.rights = rights
        self.userChatId = userChatId
        self.userId = userId
    }
}

