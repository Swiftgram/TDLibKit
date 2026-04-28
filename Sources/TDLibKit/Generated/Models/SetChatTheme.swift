//
//  SetChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
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

