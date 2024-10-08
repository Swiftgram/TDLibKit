//
//  GetChatRevenueWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-6dae0a56
//  https://github.com/tdlib/td/tree/6dae0a56
//

import Foundation


/// Returns a URL for chat revenue withdrawal; requires owner privileges in the chat. Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true and getOption("can_withdraw_chat_revenue")
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

