//
//  GetAnimatedEmoji.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Returns an animated emoji corresponding to a given emoji. Returns a 404 error if the emoji has no animated emoji
public struct GetAnimatedEmoji: Codable {

    /// The emoji
    public let emoji: String?


    public init(emoji: String?) {
        self.emoji = emoji
    }
}

