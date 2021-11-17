//
//  GameHighScores.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Contains a list of game high scores
public struct GameHighScores: Codable {

    /// A list of game high scores
    public let scores: [GameHighScore]


    public init(scores: [GameHighScore]) {
        self.scores = scores
    }
}

