//
//  SetChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
//

import Foundation


/// Changes the chat theme. Supported only in private and secret chats
public struct SetChatTheme: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New chat theme; pass null to return the default theme
    public let theme: InputChatTheme?


    public init(
        chatId: Int64?,
        theme: InputChatTheme?
    ) {
        self.chatId = chatId
        self.theme = theme
    }
}

