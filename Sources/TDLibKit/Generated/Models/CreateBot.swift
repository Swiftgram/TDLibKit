//
//  CreateBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Creates a bot which will be managed by another bot. Returns the created bot. May return an error with a message "BOT_CREATE_LIMIT_EXCEEDED" if the user already owns the maximum allowed number of bots as per getOption("owned_bot_count_max"). An internal link "https://t.me/BotFather?start=deletebot" can be processed to handle the error
public struct CreateBot: Codable, Equatable, Hashable {

    /// Identifier of the bot that will manage the created bot
    public let managerBotUserId: Int64?

    /// Name of the bot; 1-64 characters
    public let name: String?

    /// Username of the bot. The username must end with "bot" or a string from updateAllowedBotUsernamePremiumSuffixes case-insensitive. Use checkBotUsername to find whether the name is suitable. If the username doesn't end with "bot", then the current user must have Telegram Premium subscription, the chosen username will be assigned as secondary and an additional regular username ending with "bot" will be automatically assigned to the created bot
    public let username: String?

    /// Pass true if the bot is created from an internalLinkTypeRequestManagedBot link
    public let viaLink: Bool?


    public init(
        managerBotUserId: Int64?,
        name: String?,
        username: String?,
        viaLink: Bool?
    ) {
        self.managerBotUserId = managerBotUserId
        self.name = name
        self.username = username
        self.viaLink = viaLink
    }
}

