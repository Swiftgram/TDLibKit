//
//  ReportSupergroupSpam.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
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

