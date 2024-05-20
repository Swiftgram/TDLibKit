//
//  GetChatRevenueWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns URL for chat revenue withdrawal; requires owner privileges in the chat. Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true and getOption("can_withdraw_chat_revenue")
public struct GetChatRevenueWithdrawalUrl: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The 2-step verification password of the current user
    public let password: String?


    public init(
        chatId: Int64?,
        password: String?
    ) {
        self.chatId = chatId
        self.password = password
    }
}

