//
//  ChatStatisticsMessageSenderInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Contains statistics about messages sent by a user
public struct ChatStatisticsMessageSenderInfo: Codable {

    /// Average number of characters in sent messages
    public let averageCharacterCount: Int

    /// Number of sent messages
    public let sentMessageCount: Int

    /// User identifier
    public let userId: Int


    public init(
        averageCharacterCount: Int,
        sentMessageCount: Int,
        userId: Int
    ) {
        self.averageCharacterCount = averageCharacterCount
        self.sentMessageCount = sentMessageCount
        self.userId = userId
    }
}

