//
//  SetEmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-672f837c
//  https://github.com/tdlib/td/tree/672f837c
//

import Foundation


/// Changes the emoji status of the current user; for Telegram Premium users only
public struct SetEmojiStatus: Codable, Equatable, Hashable {

    /// New emoji status; pass null to switch to the default badge
    public let emojiStatus: EmojiStatus?


    public init(emojiStatus: EmojiStatus?) {
        self.emojiStatus = emojiStatus
    }
}

