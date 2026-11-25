//
//  GetStarTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns the list of Telegram Star transactions for the specified owner
public struct GetStarTransactions: Codable, Equatable, Hashable {

    /// Direction of the transactions to receive; pass null to get all transactions
    public let direction: TransactionDirection?

    /// The maximum number of transactions to return
    public let limit: Int?

    /// Offset of the first transaction to return as received from the previous request; use an empty string to get the first chunk of results
    public let offset: String?

    /// Identifier of the owner of the Telegram Stars; can be the identifier of the current user, an identifier of an owned bot, or an identifier of a supergroup or a channel chat with supergroupFullInfo.can_get_star_revenue_statistics == true
    public let ownerId: MessageSender?

    /// If non-empty, only transactions related to the Star Subscription will be returned
    public let subscriptionId: String?


    public init(
        direction: TransactionDirection?,
        limit: Int?,
        offset: String?,
        ownerId: MessageSender?,
        subscriptionId: String?
    ) {
        self.direction = direction
        self.limit = limit
        self.offset = offset
        self.ownerId = ownerId
        self.subscriptionId = subscriptionId
    }
}

