//
//  SetInlineGameScore.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Updates the game score of the specified user in a game; for bots only
public struct SetInlineGameScore: Codable, Equatable {

    /// Pass true to edit the game message to include the current scoreboard
    public let editMessage: Bool?

    /// Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
    public let force: Bool?

    /// Inline message identifier
    public let inlineMessageId: String?

    /// The new score
    public let score: Int?

    /// User identifier
    public let userId: Int64?


    public init(
        editMessage: Bool?,
        force: Bool?,
        inlineMessageId: String?,
        score: Int?,
        userId: Int64?
    ) {
        self.editMessage = editMessage
        self.force = force
        self.inlineMessageId = inlineMessageId
        self.score = score
        self.userId = userId
    }
}

