//
//  SetEmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-e531ae2e
//  https://github.com/tdlib/td/tree/e531ae2e
//

import Foundation


/// Changes the emoji status of the current user; for Telegram Premium users only
public struct SetEmojiStatus: Codable, Equatable {

    /// Duration of the status, in seconds; pass 0 to keep the status active until it will be changed manually
    public let duration: Int?

    /// New emoji status; pass null to switch to the default badge
    public let emojiStatus: EmojiStatus?


    public init(
        duration: Int?,
        emojiStatus: EmojiStatus?
    ) {
        self.duration = duration
        self.emojiStatus = emojiStatus
    }
}

