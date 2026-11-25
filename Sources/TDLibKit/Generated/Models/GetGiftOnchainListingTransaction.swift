//
//  GetGiftOnChainListingTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns a transaction that must be sent from the TON wallet of the current user to put an upgraded gift for which upgradedGift.uses_on_chain_resale is true up for sale, or to change the price of a gift for which giftResaleParameters.is_fixed_on_chain and giftResaleParameters.can_be_managed are true; can be used only if getOption("can_use_ton_wallet"). The type of the sale is chosen by the server. The gift is put up for sale only after the transaction is executed on the TON blockchain and the sale smart contract confirms that it has received the gift. The price of the gift minus the fee specified in upgradedGift.fee_basis_points will be received by the TON wallet of the current user when the gift is sold. If giftResaleParameters.is_fixed_on_chain is false, then the current sale must be canceled first using getGiftOnChainDelistingTransaction to change the price of the gift
public struct GetGiftOnChainListingTransaction: Codable, Equatable, Hashable {

    /// Name of the upgraded gift
    public let giftName: String?

    /// The price of the gift that the buyer will pay, in the smallest units of TON Grams. The price in 1/100 of a Gram must be in the range getOption("gift_resale_gram_cent_count_min")-getOption("gift_resale_gram_cent_count_max")
    public let gramAmount: TdInt64?


    public init(
        giftName: String?,
        gramAmount: TdInt64?
    ) {
        self.giftName = giftName
        self.gramAmount = gramAmount
    }
}

