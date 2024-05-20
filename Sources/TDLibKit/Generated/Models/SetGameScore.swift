//
//  SetGameScore.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Updates the game score of the specified user in the game; for bots only
public struct SetGameScore: Codable, Equatable, Hashable {

    /// The chat to which the message with the game belongs
    public let chatId: Int64?

    /// Pass true to edit the game message to include the current scoreboard
    public let editMessage: Bool?

    /// Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
    public let force: Bool?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new score
    public let score: Int?

    /// User identifier
    public let userId: Int64?


    public init(
        chatId: Int64?,
        editMessage: Bool?,
        force: Bool?,
        messageId: Int64?,
        score: Int?,
        userId: Int64?
    ) {
        self.chatId = chatId
        self.editMessage = editMessage
        self.force = force
        self.messageId = messageId
        self.score = score
        self.userId = userId
    }
}

