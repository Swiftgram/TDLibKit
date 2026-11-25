//
//  GetGiftOnChainDelistingTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns a transaction that must be sent from the TON wallet of the current user to cancel the on-chain sale of an upgraded gift for which giftResaleParameters.can_be_managed is true; can be used only if getOption("can_use_ton_wallet"). The sale is canceled only after the transaction is executed on the TON blockchain. Then, the gift will be in the TON wallet of the current user
public struct GetGiftOnChainDelistingTransaction: Codable, Equatable, Hashable {

    /// Name of the upgraded gift
    public let giftName: String?


    public init(giftName: String?) {
        self.giftName = giftName
    }
}

