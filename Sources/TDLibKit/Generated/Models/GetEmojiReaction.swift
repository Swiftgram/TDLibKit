//
//  GetEmojiReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-aefbf032
//  https://github.com/tdlib/td/tree/aefbf032
//

import Foundation


/// Returns information about a emoji reaction. Returns a 404 error if the reaction is not found
public struct GetEmojiReaction: Codable, Equatable, Hashable {

    /// Text representation of the reaction
    public let emoji: String?


    public init(emoji: String?) {
        self.emoji = emoji
    }
}

