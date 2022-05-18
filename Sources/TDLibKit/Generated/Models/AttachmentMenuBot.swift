//
//  AttachmentMenuBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e65c0827
//  https://github.com/tdlib/td/tree/e65c0827
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


    public init(
        androidIcon: File?,
        botUserId: Int64,
        defaultIcon: File?,
        iconColor: AttachmentMenuBotColor?,
        iosAnimatedIcon: File?,
        iosStaticIcon: File?,
        macosIcon: File?,
        name: String,
        nameColor: AttachmentMenuBotColor?
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
    }
}

