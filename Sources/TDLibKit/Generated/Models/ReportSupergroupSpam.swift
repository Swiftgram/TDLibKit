//
//  ReportSupergroupSpam.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-d44617b4
//  https://github.com/tdlib/td/tree/d44617b4
//

import Foundation


/// Reports messages in a supergroup as spam; requires administrator rights in the supergroup
public struct ReportSupergroupSpam: Codable, Equatable, Hashable {

    /// Identifiers of messages to report
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

