//
//  SetChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Changes the chat theme. Supported only in private and secret chats
public struct SetChatTheme: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Name of the new chat theme; pass an empty string to return the default theme
    public let themeName: String?


    public init(
        chatId: Int64?,
        themeName: String?
    ) {
        self.chatId = chatId
        self.themeName = themeName
    }
}

