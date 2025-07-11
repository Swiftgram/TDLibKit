//
//  ShareUsersWithBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Shares users after pressing a keyboardButtonTypeRequestUsers button with the bot
public struct ShareUsersWithBot: Codable, Equatable, Hashable {

    /// Identifier of the button
    public let buttonId: Int?

    /// Identifier of the chat with the bot
    public let chatId: Int64?

    /// Identifier of the message with the button
    public let messageId: Int64?

    /// Pass true to check that the users can be shared by the button instead of actually sharing them
    public let onlyCheck: Bool?

    /// Identifiers of the shared users
    public let sharedUserIds: [Int64]?


    public init(
        buttonId: Int?,
        chatId: Int64?,
        messageId: Int64?,
        onlyCheck: Bool?,
        sharedUserIds: [Int64]?
    ) {
        self.buttonId = buttonId
        self.chatId = chatId
        self.messageId = messageId
        self.onlyCheck = onlyCheck
        self.sharedUserIds = sharedUserIds
    }
}

