//
//  OpenWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-b6c7da17
//  https://github.com/tdlib/td/tree/b6c7da17
//

import Foundation


/// Informs TDLib that a web app is being opened from attachment menu, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button. For each bot, a confirmation alert about data sent to the bot must be shown once
public struct OpenWebApp: Codable, Equatable {

    /// Identifier of the bot, providing the web app
    public let botUserId: Int64?

    /// Identifier of the chat in which the web app is opened. Web apps can be opened only in private chats for now
    public let chatId: Int64?

    /// Identifier of the replied message for the message sent by the web app; 0 if none
    public let replyToMessageId: Int64?

    /// Preferred web app theme; pass null to use the default theme
    public let theme: ThemeParameters?

    /// The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, or an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise
    public let url: String?


    public init(
        botUserId: Int64?,
        chatId: Int64?,
        replyToMessageId: Int64?,
        theme: ThemeParameters?,
        url: String?
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
        self.replyToMessageId = replyToMessageId
        self.theme = theme
        self.url = url
    }
}

