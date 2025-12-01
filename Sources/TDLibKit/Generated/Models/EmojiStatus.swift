//
//  EmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
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

