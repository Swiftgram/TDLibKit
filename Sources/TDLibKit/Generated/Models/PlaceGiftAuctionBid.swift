//
//  PlaceGiftAuctionBid.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Places a bid on an auction gift
public struct PlaceGiftAuctionBid: Codable, Equatable, Hashable {

    /// Identifier of the gift to place the bid on
    public let giftId: TdInt64?

    /// Pass true to show gift text and sender only to the gift receiver; otherwise, everyone will be able to see them
    public let isPrivate: Bool?

    /// The number of Telegram Stars to place in the bid
    public let starCount: Int64?

    /// Text to show along with the gift; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed. Must be empty if the receiver enabled paid messages
    public let text: FormattedText?

    /// Identifier of the user that will receive the gift
    public let userId: Int64?


    public init(
        giftId: TdInt64?,
        isPrivate: Bool?,
        starCount: Int64?,
        text: FormattedText?,
        userId: Int64?
    ) {
        self.giftId = giftId
        self.isPrivate = isPrivate
        self.starCount = starCount
        self.text = text
        self.userId = userId
    }
}

