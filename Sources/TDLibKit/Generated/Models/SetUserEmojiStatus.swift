//
//  SetUserEmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-1e75ca0c
//  https://github.com/tdlib/td/tree/1e75ca0c
//

import Foundation


/// Changes the emoji status of a user; for bots only
public struct SetUserEmojiStatus: Codable, Equatable, Hashable {

    /// New emoji status; pass null to switch to the default badge
    public let emojiStatus: EmojiStatus?

    /// Identifier of the user
    public let userId: Int64?


    public init(
        emojiStatus: EmojiStatus?,
        userId: Int64?
    ) {
        self.emojiStatus = emojiStatus
        self.userId = userId
    }
}

