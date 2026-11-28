//
//  ToggleBotCanManageEmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Toggles whether the bot can manage the emoji status of the current user
public struct ToggleBotCanManageEmojiStatus: Codable, Equatable, Hashable {

    /// User identifier of the bot
    public let botUserId: Int64?

    /// Pass true if the bot is allowed to change the emoji status of the user; pass false otherwise
    public let canManageEmojiStatus: Bool?


    public init(
        botUserId: Int64?,
        canManageEmojiStatus: Bool?
    ) {
        self.botUserId = botUserId
        self.canManageEmojiStatus = canManageEmojiStatus
    }
}

