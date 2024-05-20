//
//  PremiumGiftCodeInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a Telegram Premium gift code
public struct PremiumGiftCodeInfo: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the code was created
    public let creationDate: Int

    /// Identifier of a chat or a user that created the gift code; may be null if unknown. If null and the code is from messagePremiumGiftCode message, then creator_id from the message can be used
    public let creatorId: MessageSender?

    /// Identifier of the corresponding giveaway message in the creator_id chat; can be 0 or an identifier of a deleted message
    public let giveawayMessageId: Int64

    /// True, if the gift code was created for a giveaway
    public let isFromGiveaway: Bool

    /// Number of months the Telegram Premium subscription will be active after code activation
    public let monthCount: Int

    /// Point in time (Unix timestamp) when the code was activated; 0 if none
    public let useDate: Int

    /// Identifier of a user for which the code was created; 0 if none
    public let userId: Int64


    public init(
        creationDate: Int,
        creatorId: MessageSender?,
        giveawayMessageId: Int64,
        isFromGiveaway: Bool,
        monthCount: Int,
        useDate: Int,
        userId: Int64
    ) {
        self.creationDate = creationDate
        self.creatorId = creatorId
        self.giveawayMessageId = giveawayMessageId
        self.isFromGiveaway = isFromGiveaway
        self.monthCount = monthCount
        self.useDate = useDate
        self.userId = userId
    }
}

