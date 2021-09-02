//
//  SetChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Changes the chat theme. Requires can_change_info administrator right in groups, supergroups and channels
public struct SetChatTheme: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Name of the new chat theme; may be empty to return the default theme
    public let themeName: String


    public init(
        chatId: Int64,
        themeName: String
    ) {
        self.chatId = chatId
        self.themeName = themeName
    }
}

