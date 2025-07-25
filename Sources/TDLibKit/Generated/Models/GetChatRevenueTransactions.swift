//
//  GetChatRevenueTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns the list of revenue transactions for a chat. Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true or bots if userFullInfo.bot_info.can_get_revenue_statistics == true
public struct GetChatRevenueTransactions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The maximum number of transactions to be returned; up to 200
    public let limit: Int?

    /// Number of transactions to skip
    public let offset: Int?


    public init(
        chatId: Int64?,
        limit: Int?,
        offset: Int?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.offset = offset
    }
}

