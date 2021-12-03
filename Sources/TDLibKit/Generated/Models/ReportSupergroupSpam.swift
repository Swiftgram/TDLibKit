//
//  ReportSupergroupSpam.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-8d7bda00
//  https://github.com/tdlib/td/tree/8d7bda00
//

import Foundation


/// Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup
public struct ReportSupergroupSpam: Codable, Equatable {

    /// Identifiers of messages sent in the supergroup by the user. This list must be non-empty
    public let messageIds: [Int64]?

    /// Supergroup identifier
    public let supergroupId: Int64?

    /// User identifier
    public let userId: Int64?


    public init(
        messageIds: [Int64]?,
        supergroupId: Int64?,
        userId: Int64?
    ) {
        self.messageIds = messageIds
        self.supergroupId = supergroupId
        self.userId = userId
    }
}

