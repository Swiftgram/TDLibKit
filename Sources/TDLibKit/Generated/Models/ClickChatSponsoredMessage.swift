//
//  ClickChatSponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Informs TDLib that the user opened the sponsored chat via the button, the name, the photo, or a mention in the sponsored message
public struct ClickChatSponsoredMessage: Codable, Equatable, Hashable {

    /// Chat identifier of the sponsored message
    public let chatId: Int64?

    /// Identifier of the sponsored message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

