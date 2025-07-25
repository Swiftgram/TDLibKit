//
//  GiftPremiumWithStars.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Allows to buy a Telegram Premium subscription for another user with payment in Telegram Stars; for bots only
public struct GiftPremiumWithStars: Codable, Equatable, Hashable {

    /// Number of months the Telegram Premium subscription will be active for the user
    public let monthCount: Int?

    /// The number of Telegram Stars to pay for subscription
    public let starCount: Int64?

    /// Text to show to the user receiving Telegram Premium; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
    public let text: FormattedText?

    /// Identifier of the user which will receive Telegram Premium
    public let userId: Int64?


    public init(
        monthCount: Int?,
        starCount: Int64?,
        text: FormattedText?,
        userId: Int64?
    ) {
        self.monthCount = monthCount
        self.starCount = starCount
        self.text = text
        self.userId = userId
    }
}

