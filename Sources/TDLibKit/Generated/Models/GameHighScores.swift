//
//  GameHighScores.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
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

