//
//  GetUpgradedGiftDepositInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
//

import Foundation


/// Returns information needed to deposit an upgraded gift from the TON wallet of the current user to a Telegram account. Use sendTonWalletTransfer to complete transfer of the gift. The gift will be received by the new owner with a message about the gift after the transfer is confirmed in the blockchain
public struct GetUpgradedGiftDepositInfo: Codable, Equatable, Hashable {

    /// Pass true to hide the sender of the gift in the message received by the new owner
    public let hideSender: Bool?

    /// Unique name of the upgraded gift
    public let name: String?

    /// Identifier of the user or the channel chat that will receive the gift
    public let ownerId: MessageSender?


    public init(
        hideSender: Bool?,
        name: String?,
        ownerId: MessageSender?
    ) {
        self.hideSender = hideSender
        self.name = name
        self.ownerId = ownerId
    }
}

