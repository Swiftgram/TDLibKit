//
//  ReportSupergroupSpam.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup
public struct ReportSupergroupSpam: Codable {

    /// Identifiers of messages sent in the supergroup by the user. This list must be non-empty
    public let messageIds: [Int64]

    /// Supergroup identifier
    public let supergroupId: Int

    /// User identifier
    public let userId: Int


    public init(
        messageIds: [Int64],
        supergroupId: Int,
        userId: Int
    ) {
        self.messageIds = messageIds
        self.supergroupId = supergroupId
        self.userId = userId
    }
}

