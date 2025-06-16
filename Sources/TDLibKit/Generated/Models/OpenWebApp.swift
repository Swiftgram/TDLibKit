//
//  OpenWebApp.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
//

import Foundation


/// Informs TDLib that a Web App is being opened from the attachment menu, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button. For each bot, a confirmation alert about data sent to the bot must be shown once
public struct OpenWebApp: Codable, Equatable, Hashable {

    /// Identifier of the bot, providing the Web App. If the bot is restricted for the current user, then show an error instead of calling the method
    public let botUserId: Int64?

    /// Identifier of the chat in which the Web App is opened. The Web App can't be opened in secret chats
    public let chatId: Int64?

    /// If not 0, unique identifier of the topic of channel direct messages chat to which the message will be sent
    public let directMessagesChatTopicId: Int64?

    /// If not 0, the message thread identifier to which the message will be sent
    public let messageThreadId: Int64?

    /// Parameters to use to open the Web App
    public let parameters: WebAppOpenParameters?

    /// Information about the message or story to be replied in the message sent by the Web App; pass null if none
    public let replyTo: InputMessageReplyTo?

    /// The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise
    public let url: String?


    public init(
        botUserId: Int64?,
        chatId: Int64?,
        directMessagesChatTopicId: Int64?,
        messageThreadId: Int64?,
        parameters: WebAppOpenParameters?,
        replyTo: InputMessageReplyTo?,
        url: String?
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
        self.directMessagesChatTopicId = directMessagesChatTopicId
        self.messageThreadId = messageThreadId
        self.parameters = parameters
        self.replyTo = replyTo
        self.url = url
    }
}

