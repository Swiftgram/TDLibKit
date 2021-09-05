//
//  GetChatStatisticsUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
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

