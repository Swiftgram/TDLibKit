//
//  GameHighScore.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Contains one row of the game high score table
public struct GameHighScore: Codable, Equatable, Hashable {

    /// Position in the high score table
    public let position: Int

    /// User score
    public let score: Int

    /// User identifier
    public let userId: Int64


    public init(
        position: Int,
        score: Int,
        userId: Int64
    ) {
        self.position = position
        self.score = score
        self.userId = userId
    }
}

