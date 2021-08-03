//
//  GameHighScore.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Contains one row of the game high score table
public struct GameHighScore: Codable {

    /// Position in the high score table
    public let position: Int

    /// User score
    public let score: Int

    /// User identifier
    public let userId: Int


    public init(
        position: Int,
        score: Int,
        userId: Int
    ) {
        self.position = position
        self.score = score
        self.userId = userId
    }
}

