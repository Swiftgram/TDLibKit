//
//  AttachmentMenuBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a bot, which can be added to attachment or side menu
public struct AttachmentMenuBot: Codable, Equatable, Hashable {

    /// Icon for the bot in TGS format for the official Android app; may be null
    public let androidIcon: File?

    /// Icon for the bot in SVG format for the official Android app side menu; may be null
    public let androidSideMenuIcon: File?

    /// User identifier of the bot
    public let botUserId: Int64

    /// Default icon for the bot in SVG format; may be null
    public let defaultIcon: File?

    /// Color to highlight selected icon of the bot if appropriate; may be null
    public let iconColor: AttachmentMenuBotColor?

    /// Icon for the bot in TGS format for the official iOS app; may be null
    public let iosAnimatedIcon: File?

    /// Icon for the bot in PNG format for the official iOS app side menu; may be null
    public let iosSideMenuIcon: File?

    /// Icon for the bot in SVG format for the official iOS app; may be null
    public let iosStaticIcon: File?

    /// True, if the bot was explicitly added by the user. If the bot isn't added, then on the first bot launch toggleBotIsAddedToAttachmentMenu must be called and the bot must be added or removed
    public let isAdded: Bool

    /// Icon for the bot in TGS format for the official native macOS app; may be null
    public let macosIcon: File?

    /// Icon for the bot in PNG format for the official macOS app side menu; may be null
    public let macosSideMenuIcon: File?

    /// Name for the bot in attachment menu
    public let name: String

    /// Color to highlight selected name of the bot if appropriate; may be null
    public let nameColor: AttachmentMenuBotColor?

    /// True, if the user must be asked for the permission to send messages to the bot
    public let requestWriteAccess: Bool

    /// True, if a disclaimer, why the bot is shown in the side menu, is needed
    public let showDisclaimerInSideMenu: Bool

    /// True, if the bot must be shown in the attachment menu
    public let showInAttachmentMenu: Bool

    /// True, if the bot must be shown in the side menu
    public let showInSideMenu: Bool

    /// True, if the bot supports opening from attachment menu in private chats with other bots
    public let supportsBotChats: Bool

    /// True, if the bot supports opening from attachment menu in channel chats
    public let supportsChannelChats: Bool

    /// True, if the bot supports opening from attachment menu in basic group and supergroup chats
    public let supportsGroupChats: Bool

    /// True, if the bot supports opening from attachment menu in the chat with the bot
    public let supportsSelfChat: Bool

    /// True, if the bot supports opening from attachment menu in private chats with ordinary users
    public let supportsUserChats: Bool

    /// Default placeholder for opened Web Apps in SVG format; may be null
    public let webAppPlaceholder: File?


    public init(
        androidIcon: File?,
        androidSideMenuIcon: File?,
        botUserId: Int64,
        defaultIcon: File?,
        iconColor: AttachmentMenuBotColor?,
        iosAnimatedIcon: File?,
        iosSideMenuIcon: File?,
        iosStaticIcon: File?,
        isAdded: Bool,
        macosIcon: File?,
        macosSideMenuIcon: File?,
        name: String,
        nameColor: AttachmentMenuBotColor?,
        requestWriteAccess: Bool,
        showDisclaimerInSideMenu: Bool,
        showInAttachmentMenu: Bool,
        showInSideMenu: Bool,
        supportsBotChats: Bool,
        supportsChannelChats: Bool,
        supportsGroupChats: Bool,
        supportsSelfChat: Bool,
        supportsUserChats: Bool,
        webAppPlaceholder: File?
    ) {
        self.androidIcon = androidIcon
        self.androidSideMenuIcon = androidSideMenuIcon
        self.botUserId = botUserId
        self.defaultIcon = defaultIcon
        self.iconColor = iconColor
        self.iosAnimatedIcon = iosAnimatedIcon
        self.iosSideMenuIcon = iosSideMenuIcon
        self.iosStaticIcon = iosStaticIcon
        self.isAdded = isAdded
        self.macosIcon = macosIcon
        self.macosSideMenuIcon = macosSideMenuIcon
        self.name = name
        self.nameColor = nameColor
        self.requestWriteAccess = requestWriteAccess
        self.showDisclaimerInSideMenu = showDisclaimerInSideMenu
        self.showInAttachmentMenu = showInAttachmentMenu
        self.showInSideMenu = showInSideMenu
        self.supportsBotChats = supportsBotChats
        self.supportsChannelChats = supportsChannelChats
        self.supportsGroupChats = supportsGroupChats
        self.supportsSelfChat = supportsSelfChat
        self.supportsUserChats = supportsUserChats
        self.webAppPlaceholder = webAppPlaceholder
    }
}

