//
//  ReportSupergroupAntiSpamFalsePositive.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Reports a false deletion of a message by aggressive anti-spam checks; requires administrator rights in the supergroup. Can be called only for messages from chatEventMessageDeleted with can_report_anti_spam_false_positive == true
public struct ReportSupergroupAntiSpamFalsePositive: Codable, Equatable, Hashable {

    /// Identifier of the erroneously deleted message from chatEventMessageDeleted
    public let messageId: Int64?

    /// Supergroup identifier
    public let supergroupId: Int64?


    public init(
        messageId: Int64?,
        supergroupId: Int64?
    ) {
        self.messageId = messageId
        self.supergroupId = supergroupId
    }
}

