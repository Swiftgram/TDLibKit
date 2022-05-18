//
//  BotInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e65c0827
//  https://github.com/tdlib/td/tree/e65c0827
//

import Foundation


/// Contains information about a bot
public struct BotInfo: Codable, Equatable {

    /// List of the bot commands
    public let commands: [BotCommand]

    /// Default administrator rights for adding the bot to channels; may be null
    public let defaultChannelAdministratorRights: ChatAdministratorRights?

    /// Default administrator rights for adding the bot to basic group and supergroup chats; may be null
    public let defaultGroupAdministratorRights: ChatAdministratorRights?

    public let description: String

    /// Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown
    public let menuButton: BotMenuButton?

    /// The text that is shown on the bot's profile page and is sent together with the link when users share the bot
    public let shareText: String


    public init(
        commands: [BotCommand],
        defaultChannelAdministratorRights: ChatAdministratorRights?,
        defaultGroupAdministratorRights: ChatAdministratorRights?,
        description: String,
        menuButton: BotMenuButton?,
        shareText: String
    ) {
        self.commands = commands
        self.defaultChannelAdministratorRights = defaultChannelAdministratorRights
        self.defaultGroupAdministratorRights = defaultGroupAdministratorRights
        self.description = description
        self.menuButton = menuButton
        self.shareText = shareText
    }
}

