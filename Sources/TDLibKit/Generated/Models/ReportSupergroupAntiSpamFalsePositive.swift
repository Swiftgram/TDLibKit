//
//  ReportSupergroupAntiSpamFalsePositive.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-3d4b4ac0
//  https://github.com/tdlib/td/tree/3d4b4ac0
//

import Foundation


/// Reports a false deletion of a message by aggressive anti-spam checks; requires administrator rights in the supergroup. Can be called only for messages from chatEventMessageDeleted with can_report_anti_spam_false_positive == true
public struct ReportSupergroupAntiSpamFalsePositive: Codable, Equatable {

    /// Identifier of the erroneously deleted message
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

