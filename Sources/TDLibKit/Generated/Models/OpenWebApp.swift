//
//  OpenWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Informs TDLib that a Web App is being opened from the attachment menu, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button. For each bot, a confirmation alert about data sent to the bot must be shown once
public struct OpenWebApp: Codable, Equatable, Hashable {

    /// Identifier of the bot, providing the Web App. If the bot is restricted for the current user, then show an error instead of calling the method
    public let botUserId: Int64?

    /// Identifier of the chat in which the Web App is opened. The Web App can't be opened in secret chats
    public let chatId: Int64?

    /// Parameters to use to open the Web App
    public let parameters: WebAppOpenParameters?

    /// Information about the message or story to be replied in the message sent by the Web App; pass null if none
    public let replyTo: InputMessageReplyTo?

    /// Topic in which the message will be sent; pass null if none
    public let topicId: MessageTopic?

    /// The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise
    public let url: String?


    public init(
        botUserId: Int64?,
        chatId: Int64?,
        parameters: WebAppOpenParameters?,
        replyTo: InputMessageReplyTo?,
        topicId: MessageTopic?,
        url: String?
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
        self.parameters = parameters
        self.replyTo = replyTo
        self.topicId = topicId
        self.url = url
    }
}

