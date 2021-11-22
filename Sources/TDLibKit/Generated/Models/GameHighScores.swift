//
//  GameHighScores.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-743a30d4
//  https://github.com/tdlib/td/tree/743a30d4
//

import Foundation


/// Contains a list of game high scores
public struct GameHighScores: Codable, Equatable {

    /// A list of game high scores
    public let scores: [GameHighScore]


    public init(scores: [GameHighScore]) {
        self.scores = scores
    }
}

