//
//  SendResoldGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Sends an upgraded gift that is available for resale to another user or channel chat; gifts already owned by the current user must be transferred using transferGift and can't be passed to the method
public struct SendResoldGift: Codable, Equatable, Hashable {

    /// Name of the upgraded gift to send
    public let giftName: String?

    /// Pass true to show gift text and sender only to the gift receiver; otherwise, everyone will be able to see them
    public let isPrivate: Bool?

    /// Identifier of the user or the channel chat that will receive the gift
    public let ownerId: MessageSender?

    /// The price that the user agreed to pay for the gift
    public let price: GiftResalePrice?

    /// Text to show along with the gift; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are allowed. Must be empty if the receiver enabled paid messages and the price of the gift is less than the price of a paid message to the user
    public let text: FormattedText?


    public init(
        giftName: String?,
        isPrivate: Bool?,
        ownerId: MessageSender?,
        price: GiftResalePrice?,
        text: FormattedText?
    ) {
        self.giftName = giftName
        self.isPrivate = isPrivate
        self.ownerId = ownerId
        self.price = price
        self.text = text
    }
}

