//
//  EmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Describes an emoji to be shown instead of the Telegram Premium badge
public struct EmojiStatus: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the status will expire; 0 if never
    public let expirationDate: Int

    /// Type of the emoji status
    public let type: EmojiStatusType


    public init(
        expirationDate: Int,
        type: EmojiStatusType
    ) {
        self.expirationDate = expirationDate
        self.type = type
    }
}

