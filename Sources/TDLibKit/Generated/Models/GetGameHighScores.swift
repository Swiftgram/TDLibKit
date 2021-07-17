//
//  GetGameHighScores.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only
public struct GetGameHighScores: Codable {

    /// The chat that contains the message with the game
    public let chatId: Int64

    /// Identifier of the message
    public let messageId: Int64

    /// User identifier
    public let userId: Int


    public init(
        chatId: Int64,
        messageId: Int64,
        userId: Int
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.userId = userId
    }
}

