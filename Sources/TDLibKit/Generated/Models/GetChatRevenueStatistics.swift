//
//  GetChatRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Returns detailed revenue statistics about a chat. Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true
public struct GetChatRevenueStatistics: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true if a dark theme is used by the application
    public let isDark: Bool?


    public init(
        chatId: Int64?,
        isDark: Bool?
    ) {
        self.chatId = chatId
        self.isDark = isDark
    }
}

