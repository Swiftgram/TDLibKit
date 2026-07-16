//
//  GameHighScores.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Contains a list of game high scores
public struct GameHighScores: Codable, Equatable, Hashable {

    /// A list of game high scores
    public let scores: [GameHighScore]


    public init(scores: [GameHighScore]) {
        self.scores = scores
    }
}

