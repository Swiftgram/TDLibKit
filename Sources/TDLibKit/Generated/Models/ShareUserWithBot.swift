//
//  ShareUserWithBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4041ecb5
//  https://github.com/tdlib/td/tree/4041ecb5
//

import Foundation


/// Shares a user after pressing a keyboardButtonTypeRequestUser button with the bot
public struct ShareUserWithBot: Codable, Equatable {

    /// Identifier of the button
    public let buttonId: Int?

    /// Identifier of the chat with the bot
    public let chatId: Int64?

    /// Identifier of the message with the button
    public let messageId: Int64?

    /// Pass true to check that the user can be shared by the button instead of actually sharing them
    public let onlyCheck: Bool?

    /// Identifier of the shared user
    public let sharedUserId: Int64?


    public init(
        buttonId: Int?,
        chatId: Int64?,
        messageId: Int64?,
        onlyCheck: Bool?,
        sharedUserId: Int64?
    ) {
        self.buttonId = buttonId
        self.chatId = chatId
        self.messageId = messageId
        self.onlyCheck = onlyCheck
        self.sharedUserId = sharedUserId
    }
}

