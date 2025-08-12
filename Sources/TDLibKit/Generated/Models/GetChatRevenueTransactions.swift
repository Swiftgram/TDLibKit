//
//  GetChatRevenueTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Returns the list of revenue transactions for a chat. Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true or bots if userFullInfo.bot_info.can_get_revenue_statistics == true
public struct GetChatRevenueTransactions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The maximum number of transactions to be returned; up to 100
    public let limit: Int?

    /// Offset of the first transaction to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        chatId: Int64?,
        limit: Int?,
        offset: String?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.offset = offset
    }
}

