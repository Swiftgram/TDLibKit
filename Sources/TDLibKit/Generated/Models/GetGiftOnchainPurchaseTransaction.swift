//
//  GetGiftOnChainPurchaseTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns a transaction that must be sent from the TON wallet of the current user to buy an upgraded gift for which upgradedGift.uses_on_chain_resale is true; can be used only if getOption("can_use_ton_wallet"). Gifts for which giftResaleParameters.is_fixed_on_chain is true can be bought only if getOption("can_buy_on_chain_fixed_price_gifts") is true, and other gifts can be bought only if getOption("can_buy_on_chain_gifts") is true. The type of the returned transaction depends on the type of the sale. The gift will be received by the new owner after the transaction is executed on the TON blockchain. If the gift is bought for the current user, then it will be received by the TON wallet of the current user, and will be shown on the user's profile page if it is still in the wallet
public struct GetGiftOnChainPurchaseTransaction: Codable, Equatable, Hashable {

    /// Name of the upgraded gift
    public let giftName: String?

    /// The price of the gift, in the smallest units of TON Grams; must be equal to giftResaleParameters.gram_amount. The request fails with the error "STARGIFT_ONCHAIN_PRICE_CHANGED" if the price has changed. The amount that will be paid can be greater than the price because of blockchain fees
    public let gramAmount: TdInt64?

    /// Pass true to show the gift text and sender only to the gift receiver; otherwise, everyone will be able to see them
    public let isPrivate: Bool?

    /// Identifier of the user or the channel chat that will receive the gift; must be the current user if giftResaleParameters.is_fixed_on_chain is false
    public let ownerId: MessageSender?

    /// Text to show along with the gift; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are allowed. Must be empty if the receiver enabled paid messages and the price of the gift is less than the price of a paid message to the user
    public let text: FormattedText?


    public init(
        giftName: String?,
        gramAmount: TdInt64?,
        isPrivate: Bool?,
        ownerId: MessageSender?,
        text: FormattedText?
    ) {
        self.giftName = giftName
        self.gramAmount = gramAmount
        self.isPrivate = isPrivate
        self.ownerId = ownerId
        self.text = text
    }
}

