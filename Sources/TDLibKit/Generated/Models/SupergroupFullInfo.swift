//
//  SupergroupFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains full information about a supergroup or channel
public struct SupergroupFullInfo: Codable, Equatable, Hashable {

    /// Number of privileged users in the supergroup or channel; 0 if unknown
    public let administratorCount: Int

    /// Number of users banned from chat; 0 if unknown
    public let bannedCount: Int

    /// List of commands of bots in the group
    public let botCommands: [BotCommands]

    /// True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers
    public let canGetMembers: Bool

    /// True, if the supergroup or channel revenue statistics are available
    public let canGetRevenueStatistics: Bool

    /// True, if the supergroup or channel statistics are available
    public let canGetStatistics: Bool

    /// True, if the chat can have sponsored messages. The value of this field is only available to the owner of the chat
    public let canHaveSponsoredMessages: Bool

    /// True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators
    public let canHideMembers: Bool

    /// True, if the supergroup location can be changed
    public let canSetLocation: Bool

    /// True, if the supergroup sticker set can be changed
    public let canSetStickerSet: Bool

    /// True, if aggressive anti-spam checks can be enabled or disabled in the supergroup
    public let canToggleAggressiveAntiSpam: Bool

    /// Identifier of the custom emoji sticker set that can be used in the supergroup without Telegram Premium subscription; 0 if none
    public let customEmojiStickerSetId: TdInt64

    public let description: String

    /// True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators
    public let hasAggressiveAntiSpamEnabled: Bool

    /// True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers
    public let hasHiddenMembers: Bool

    /// True, if the supergroup or channel has pinned stories
    public let hasPinnedStories: Bool

    /// Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only
    public let inviteLink: ChatInviteLink?

    /// True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available, so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators
    public let isAllHistoryAvailable: Bool

    /// Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown
    public let linkedChatId: Int64

    /// Location to which the supergroup is connected; may be null if none
    public let location: ChatLocation?

    /// Number of members in the supergroup or channel; 0 if unknown
    public let memberCount: Int

    /// Number of times the current user boosted the supergroup or channel
    public let myBoostCount: Int

    /// Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo
    public let photo: ChatPhoto?

    /// Number of restricted users in the supergroup; 0 if unknown
    public let restrictedCount: Int

    /// Delay between consecutive sent messages for non-administrator supergroup members, in seconds
    public let slowModeDelay: Int

    /// Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero
    public let slowModeDelayExpiresIn: Double

    /// Identifier of the supergroup sticker set that must be shown before user sticker sets; 0 if none
    public let stickerSetId: TdInt64

    /// Number of times the supergroup must be boosted by a user to ignore slow mode and chat permission restrictions; 0 if unspecified
    public let unrestrictBoostCount: Int

    /// Identifier of the basic group from which supergroup was upgraded; 0 if none
    public let upgradedFromBasicGroupId: Int64

    /// Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
    public let upgradedFromMaxMessageId: Int64


    public init(
        administratorCount: Int,
        bannedCount: Int,
        botCommands: [BotCommands],
        canGetMembers: Bool,
        canGetRevenueStatistics: Bool,
        canGetStatistics: Bool,
        canHaveSponsoredMessages: Bool,
        canHideMembers: Bool,
        canSetLocation: Bool,
        canSetStickerSet: Bool,
        canToggleAggressiveAntiSpam: Bool,
        customEmojiStickerSetId: TdInt64,
        description: String,
        hasAggressiveAntiSpamEnabled: Bool,
        hasHiddenMembers: Bool,
        hasPinnedStories: Bool,
        inviteLink: ChatInviteLink?,
        isAllHistoryAvailable: Bool,
        linkedChatId: Int64,
        location: ChatLocation?,
        memberCount: Int,
        myBoostCount: Int,
        photo: ChatPhoto?,
        restrictedCount: Int,
        slowModeDelay: Int,
        slowModeDelayExpiresIn: Double,
        stickerSetId: TdInt64,
        unrestrictBoostCount: Int,
        upgradedFromBasicGroupId: Int64,
        upgradedFromMaxMessageId: Int64
    ) {
        self.administratorCount = administratorCount
        self.bannedCount = bannedCount
        self.botCommands = botCommands
        self.canGetMembers = canGetMembers
        self.canGetRevenueStatistics = canGetRevenueStatistics
        self.canGetStatistics = canGetStatistics
        self.canHaveSponsoredMessages = canHaveSponsoredMessages
        self.canHideMembers = canHideMembers
        self.canSetLocation = canSetLocation
        self.canSetStickerSet = canSetStickerSet
        self.canToggleAggressiveAntiSpam = canToggleAggressiveAntiSpam
        self.customEmojiStickerSetId = customEmojiStickerSetId
        self.description = description
        self.hasAggressiveAntiSpamEnabled = hasAggressiveAntiSpamEnabled
        self.hasHiddenMembers = hasHiddenMembers
        self.hasPinnedStories = hasPinnedStories
        self.inviteLink = inviteLink
        self.isAllHistoryAvailable = isAllHistoryAvailable
        self.linkedChatId = linkedChatId
        self.location = location
        self.memberCount = memberCount
        self.myBoostCount = myBoostCount
        self.photo = photo
        self.restrictedCount = restrictedCount
        self.slowModeDelay = slowModeDelay
        self.slowModeDelayExpiresIn = slowModeDelayExpiresIn
        self.stickerSetId = stickerSetId
        self.unrestrictBoostCount = unrestrictBoostCount
        self.upgradedFromBasicGroupId = upgradedFromBasicGroupId
        self.upgradedFromMaxMessageId = upgradedFromMaxMessageId
    }
}

