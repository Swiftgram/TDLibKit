//
//  ChatStatisticsMessageInteractionInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Contains statistics about interactions with a message
public struct ChatStatisticsMessageInteractionInfo: Codable, Equatable {

    /// Number of times the message was forwarded
    public let forwardCount: Int

    /// Message identifier
    public let messageId: Int64

    /// Number of times the message was viewed
    public let viewCount: Int


    public init(
        forwardCount: Int,
        messageId: Int64,
        viewCount: Int
    ) {
        self.forwardCount = forwardCount
        self.messageId = messageId
        self.viewCount = viewCount
    }
}

