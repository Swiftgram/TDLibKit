//
//  ReportSupergroupSpam.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-aa8a4979
//  https://github.com/tdlib/td/tree/aa8a4979
//

import Foundation


/// Reports some messages from a message sender in a supergroup as spam; requires administrator rights in the supergroup
public struct ReportSupergroupSpam: Codable, Equatable {

    /// Identifiers of messages sent in the supergroup. All messages must be sent by the same sender. This list must be non-empty
    public let messageIds: [Int64]?

    /// Supergroup identifier
    public let supergroupId: Int64?


    public init(
        messageIds: [Int64]?,
        supergroupId: Int64?
    ) {
        self.messageIds = messageIds
        self.supergroupId = supergroupId
    }
}

