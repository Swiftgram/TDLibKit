//
//  UpgradeGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Upgrades a gift received by the current user. Unless the gift has prepaid_upgrade_star_count > 0, the user must pay gift.upgrade_star_count Telegram Stars for the upgrade
public struct UpgradeGift: Codable, Equatable, Hashable {

    /// Pass true to keep the original gift text, sender and receiver in the upgraded gift
    public let keepOriginalDetails: Bool?

    /// Identifier of the message with the gift in the chat with the user
    public let messageId: Int64?

    /// Identifier of the user that sent the gift
    public let senderUserId: Int64?


    public init(
        keepOriginalDetails: Bool?,
        messageId: Int64?,
        senderUserId: Int64?
    ) {
        self.keepOriginalDetails = keepOriginalDetails
        self.messageId = messageId
        self.senderUserId = senderUserId
    }
}

