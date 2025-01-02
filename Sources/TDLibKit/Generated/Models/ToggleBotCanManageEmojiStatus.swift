//
//  ToggleBotCanManageEmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Toggles whether the bot can manage emoji status of the current user
public struct ToggleBotCanManageEmojiStatus: Codable, Equatable, Hashable {

    /// User identifier of the bot
    public let botUserId: Int64?

    /// Pass true if the bot is allowed to change emoji status of the user; pass false otherwise
    public let canManageEmojiStatus: Bool?


    public init(
        botUserId: Int64?,
        canManageEmojiStatus: Bool?
    ) {
        self.botUserId = botUserId
        self.canManageEmojiStatus = canManageEmojiStatus
    }
}
