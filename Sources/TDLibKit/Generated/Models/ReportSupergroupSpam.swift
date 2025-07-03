//
//  ReportSupergroupSpam.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Reports messages in a supergroup as spam; requires administrator rights in the supergroup
public struct ReportSupergroupSpam: Codable, Equatable, Hashable {

    /// Identifiers of messages to report. Use messageProperties.can_report_supergroup_spam to check whether the message can be reported
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

