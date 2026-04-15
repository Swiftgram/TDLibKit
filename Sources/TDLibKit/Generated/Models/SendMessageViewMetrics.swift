//
//  SendMessageViewMetrics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Informs TDLib about details of a message view by the user from a chat, a message thread or a forum topic history. The method must be called if the message wasn't seen for more than 300 milliseconds, the viewport was destroyed, or the total view duration exceeded 5 minutes
public struct SendMessageViewMetrics: Codable, Equatable, Hashable {

    /// The amount of time the message was seen by at least 1 pixel within 15 seconds after any action from the user; in milliseconds
    public let activeTimeInViewMs: Int?

    /// Chat identifier
    public let chatId: Int64?

    /// The ratio of the post height to the viewport height in 1/1000 fractions
    public let heightToViewportRatioPerMille: Int?

    /// The identifier of the message being viewed
    public let messageId: Int64?

    /// The ratio of the viewed post height to the full post height in 1/1000 fractions; 0-1000
    public let seenRangeRatioPerMille: Int?

    /// The amount of time the message was seen by at least 1 pixel; in milliseconds
    public let timeInViewMs: Int?


    public init(
        activeTimeInViewMs: Int?,
        chatId: Int64?,
        heightToViewportRatioPerMille: Int?,
        messageId: Int64?,
        seenRangeRatioPerMille: Int?,
        timeInViewMs: Int?
    ) {
        self.activeTimeInViewMs = activeTimeInViewMs
        self.chatId = chatId
        self.heightToViewportRatioPerMille = heightToViewportRatioPerMille
        self.messageId = messageId
        self.seenRangeRatioPerMille = seenRangeRatioPerMille
        self.timeInViewMs = timeInViewMs
    }
}

