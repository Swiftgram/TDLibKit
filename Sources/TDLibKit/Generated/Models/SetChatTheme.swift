//
//  SetChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
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

