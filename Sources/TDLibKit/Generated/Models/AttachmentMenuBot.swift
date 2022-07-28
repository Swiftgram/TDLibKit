//
//  AttachmentMenuBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents a bot added to attachment menu
public struct AttachmentMenuBot: Codable, Equatable {

    /// Attachment menu icon for the bot in TGS format for the official Android app; may be null
    public let androidIcon: File?

    /// User identifier of the bot added to attachment menu
    public let botUserId: Int64

    /// Default attachment menu icon for the bot in SVG format; may be null
    public let defaultIcon: File?

    /// Color to highlight selected icon of the bot if appropriate; may be null
    public let iconColor: AttachmentMenuBotColor?

    /// Attachment menu icon for the bot in TGS format for the official iOS app; may be null
    public let iosAnimatedIcon: File?

    /// Attachment menu icon for the bot in SVG format for the official iOS app; may be null
    public let iosStaticIcon: File?

    /// Attachment menu icon for the bot in TGS format for the official native macOS app; may be null
    public let macosIcon: File?

    /// Name for the bot in attachment menu
    public let name: String

    /// Color to highlight selected name of the bot if appropriate; may be null
    public let nameColor: AttachmentMenuBotColor?

    /// True, if the bot supports opening from attachment menu in private chats with other bots
    public let supportsBotChats: Bool

    /// True, if the bot supports opening from attachment menu in channel chats
    public let supportsChannelChats: Bool

    /// True, if the bot supports opening from attachment menu in basic group and supergroup chats
    public let supportsGroupChats: Bool

    /// True, if the bot supports opening from attachment menu in the chat with the bot
    public let supportsSelfChat: Bool

    /// True, if the bot supports "settings_button_pressed" event
    public let supportsSettings: Bool

    /// True, if the bot supports opening from attachment menu in private chats with ordinary users
    public let supportsUserChats: Bool

    /// Default placeholder for opened Web Apps in SVG format; may be null
    public let webAppPlaceholder: File?


    public init(
        androidIcon: File?,
        botUserId: Int64,
        defaultIcon: File?,
        iconColor: AttachmentMenuBotColor?,
        iosAnimatedIcon: File?,
        iosStaticIcon: File?,
        macosIcon: File?,
        name: String,
        nameColor: AttachmentMenuBotColor?,
        supportsBotChats: Bool,
        supportsChannelChats: Bool,
        supportsGroupChats: Bool,
        supportsSelfChat: Bool,
        supportsSettings: Bool,
        supportsUserChats: Bool,
        webAppPlaceholder: File?
    ) {
        self.androidIcon = androidIcon
        self.botUserId = botUserId
        self.defaultIcon = defaultIcon
        self.iconColor = iconColor
        self.iosAnimatedIcon = iosAnimatedIcon
        self.iosStaticIcon = iosStaticIcon
        self.macosIcon = macosIcon
        self.name = name
        self.nameColor = nameColor
        self.supportsBotChats = supportsBotChats
        self.supportsChannelChats = supportsChannelChats
        self.supportsGroupChats = supportsGroupChats
        self.supportsSelfChat = supportsSelfChat
        self.supportsSettings = supportsSettings
        self.supportsUserChats = supportsUserChats
        self.webAppPlaceholder = webAppPlaceholder
    }
}

