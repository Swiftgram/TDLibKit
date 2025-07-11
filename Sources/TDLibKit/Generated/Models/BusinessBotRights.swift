//
//  BusinessBotRights.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Describes rights of a business bot
public struct BusinessBotRights: Codable, Equatable, Hashable {

    /// True, if the bot can change gift receiving settings of the business account
    public let canChangeGiftSettings: Bool

    /// True, if the bot can delete any message
    public let canDeleteAllMessages: Bool

    /// True, if the bot can delete sent messages
    public let canDeleteSentMessages: Bool

    /// True, if the bot can edit bio of the business account
    public let canEditBio: Bool

    /// True, if the bot can edit name of the business account
    public let canEditName: Bool

    /// True, if the bot can edit profile photo of the business account
    public let canEditProfilePhoto: Bool

    /// True, if the bot can edit username of the business account
    public let canEditUsername: Bool

    /// True, if the bot can post, edit and delete stories
    public let canManageStories: Bool

    /// True, if the bot can mark incoming private messages as read
    public let canReadMessages: Bool

    /// True, if the bot can send and edit messages in the private chats that had incoming messages in the last 24 hours
    public let canReply: Bool

    /// True, if the bot can sell regular gifts received by the business account
    public let canSellGifts: Bool

    /// True, if the bot can transfer and upgrade gifts received by the business account
    public let canTransferAndUpgradeGifts: Bool

    /// True, if the bot can transfer Telegram Stars received by the business account to account of the bot, or use them to upgrade and transfer gifts
    public let canTransferStars: Bool

    /// True, if the bot can view gifts and amount of Telegram Stars owned by the business account
    public let canViewGiftsAndStars: Bool


    public init(
        canChangeGiftSettings: Bool,
        canDeleteAllMessages: Bool,
        canDeleteSentMessages: Bool,
        canEditBio: Bool,
        canEditName: Bool,
        canEditProfilePhoto: Bool,
        canEditUsername: Bool,
        canManageStories: Bool,
        canReadMessages: Bool,
        canReply: Bool,
        canSellGifts: Bool,
        canTransferAndUpgradeGifts: Bool,
        canTransferStars: Bool,
        canViewGiftsAndStars: Bool
    ) {
        self.canChangeGiftSettings = canChangeGiftSettings
        self.canDeleteAllMessages = canDeleteAllMessages
        self.canDeleteSentMessages = canDeleteSentMessages
        self.canEditBio = canEditBio
        self.canEditName = canEditName
        self.canEditProfilePhoto = canEditProfilePhoto
        self.canEditUsername = canEditUsername
        self.canManageStories = canManageStories
        self.canReadMessages = canReadMessages
        self.canReply = canReply
        self.canSellGifts = canSellGifts
        self.canTransferAndUpgradeGifts = canTransferAndUpgradeGifts
        self.canTransferStars = canTransferStars
        self.canViewGiftsAndStars = canViewGiftsAndStars
    }
}

