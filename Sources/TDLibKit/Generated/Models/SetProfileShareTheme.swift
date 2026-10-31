//
//  SetProfileShareTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-4c6377aa
//  https://github.com/tdlib/td/tree/4c6377aa
//

import Foundation


/// Changes the theme of the screen for sharing a link to the current user or a chat. The chat must have a username. Requires can_change_info administrator right in supergroups and channels
public struct SetProfileShareTheme: Codable, Equatable, Hashable {

    /// Identifier of the chat with the current user, or identifier of a supergroup or a channel chat
    public let chatId: Int64?

    /// The new theme; pass null to use the default theme
    public let theme: InputProfileShareTheme?


    public init(
        chatId: Int64?,
        theme: InputProfileShareTheme?
    ) {
        self.chatId = chatId
        self.theme = theme
    }
}

