//
//  SetBotSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Changes settings of a bot. Can be called only if userTypeBot.can_be_edited == true
public struct SetBotSettings: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// The new settings of the bot; settings that aren't specified remain unchanged
    public let settings: [BotSetting]?


    public init(
        botUserId: Int64?,
        settings: [BotSetting]?
    ) {
        self.botUserId = botUserId
        self.settings = settings
    }
}

