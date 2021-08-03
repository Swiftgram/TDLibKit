//
//  GetChatStatisticsUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns an HTTP URL with the chat statistics. Currently this method of getting the statistics are disabled and can be deleted in the future
public struct GetChatStatisticsUrl: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Pass true if a URL with the dark theme must be returned
    public let isDark: Bool

    /// Parameters for the request
    public let parameters: String


    public init(
        chatId: Int64,
        isDark: Bool,
        parameters: String
    ) {
        self.chatId = chatId
        self.isDark = isDark
        self.parameters = parameters
    }
}

