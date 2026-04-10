//
//  ShareChatWithBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Shares a chat after pressing a keyboardButtonTypeRequestChat button with the bot
public struct ShareChatWithBot: Codable, Equatable, Hashable {

    /// Identifier of the button
    public let buttonId: Int?

    /// Pass true to check that the chat can be shared by the button instead of actually sharing it. Doesn't check bot_is_member and bot_administrator_rights restrictions. If the bot must be a member, then all chats from getGroupsInCommon and all chats, where the user can add the bot, are suitable. In the latter case the bot will be automatically added to the chat. If the bot must be an administrator, then all chats, where the bot already has requested rights or can be added to administrators by the user, are suitable. In the latter case the bot will be automatically granted requested rights
    public let onlyCheck: Bool?

    /// Identifier of the shared chat
    public let sharedChatId: Int64?

    /// Source of the button
    public let source: KeyboardButtonSource?


    public init(
        buttonId: Int?,
        onlyCheck: Bool?,
        sharedChatId: Int64?,
        source: KeyboardButtonSource?
    ) {
        self.buttonId = buttonId
        self.onlyCheck = onlyCheck
        self.sharedChatId = sharedChatId
        self.source = source
    }
}

