//
//  GetStarTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-97ded010
//  https://github.com/tdlib/td/tree/97ded010
//

import Foundation


/// Returns the list of Telegram star transactions for the specified owner
public struct GetStarTransactions: Codable, Equatable, Hashable {

    /// Direction of the transactions to receive; pass null to get all transactions
    public let direction: StarTransactionDirection?

    /// The maximum number of transactions to return
    public let limit: Int?

    /// Offset of the first transaction to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Identifier of the owner of the Telegram stars; can be the identifier of the current user, identifier of an owned bot, or identifier of a channel chat with supergroupFullInfo.can_get_star_revenue_statistics == true
    public let ownerId: MessageSender?


    public init(
        direction: StarTransactionDirection?,
        limit: Int?,
        offset: String?,
        ownerId: MessageSender?
    ) {
        self.direction = direction
        self.limit = limit
        self.offset = offset
        self.ownerId = ownerId
    }
}

