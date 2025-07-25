//
//  ClickChatSponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Informs TDLib that the user opened the sponsored chat via the button, the name, the chat photo, a mention in the sponsored message text, or the media in the sponsored message
public struct ClickChatSponsoredMessage: Codable, Equatable, Hashable {

    /// Chat identifier of the sponsored message
    public let chatId: Int64?

    /// Pass true if the user expanded the video from the sponsored message fullscreen before the click
    public let fromFullscreen: Bool?

    /// Pass true if the media was clicked in the sponsored message
    public let isMediaClick: Bool?

    /// Identifier of the sponsored message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        fromFullscreen: Bool?,
        isMediaClick: Bool?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.fromFullscreen = fromFullscreen
        self.isMediaClick = isMediaClick
        self.messageId = messageId
    }
}

