//
//  GetInlineGameHighScores.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
public struct GetInlineGameHighScores: Codable {

    /// Inline message identifier
    public let inlineMessageId: String

    /// User identifier
    public let userId: Int


    public init(
        inlineMessageId: String,
        userId: Int
    ) {
        self.inlineMessageId = inlineMessageId
        self.userId = userId
    }
}
