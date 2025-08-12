//
//  Supergroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers
public struct Supergroup: Codable, Equatable, Hashable, Identifiable {

    /// Approximate boost level for the chat
    public let boostLevel: Int

    /// Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
    public let date: Int

    /// True, if the supergroup or channel has non-expired stories available to the current user
    public let hasActiveStories: Bool

    /// True, if automatic translation of messages is enabled in the channel
    public let hasAutomaticTranslation: Bool

    /// True, if the channel has direct messages group
    public let hasDirectMessagesGroup: Bool

    /// True, if the supergroup is a forum, which topics are shown in the same way as in channel direct messages groups
    public let hasForumTabs: Bool

    /// True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
    public let hasLinkedChat: Bool

    /// True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
    public let hasLocation: Bool

    /// True, if content of media messages in the supergroup or channel chat must be hidden with 18+ spoiler
    public let hasSensitiveContent: Bool

    /// True, if the supergroup or channel has unread non-expired stories available to the current user
    public let hasUnreadActiveStories: Bool

    /// Supergroup or channel identifier
    public let id: Int64

    /// True, if the supergroup is a direct messages group for a channel chat that is administered by the current user
    public let isAdministeredDirectMessagesGroup: Bool

    /// True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members
    public let isBroadcastGroup: Bool

    /// True, if the supergroup is a channel
    public let isChannel: Bool

    /// True, if the supergroup is a direct message group for a channel chat
    public let isDirectMessagesGroup: Bool

    /// True, if the supergroup is a forum with topics
    public let isForum: Bool

    /// True, if the slow mode is enabled in the supergroup
    public let isSlowModeEnabled: Bool

    /// True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat
    public let joinByRequest: Bool

    /// True, if users need to join the supergroup before they can send messages. May be false only for discussion supergroups and channel direct messages groups
    public let joinToSendMessages: Bool

    /// Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through getChatSimilarChats, getChatsToPostStories, getCreatedPublicChats, getGroupsInCommon, getInactiveSupergroupChats, getRecommendedChats, getSuitableDiscussionChats, getUserPrivacySettingRules, getVideoChatAvailableParticipants, searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or in userFullInfo.personal_chat_id, or for chats with messages or stories from publicForwards and foundStories
    public let memberCount: Int

    /// Number of Telegram Stars that must be paid by non-administrator users of the supergroup chat for each sent message
    public let paidMessageStarCount: Int64

    /// If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
    public let restrictionReason: String

    /// True, if messages sent to the channel have information about the sender user. This field is only applicable to channels
    public let showMessageSender: Bool

    /// True, if messages sent to the channel contains name of the sender. This field is only applicable to channels
    public let signMessages: Bool

    /// Status of the current user in the supergroup or channel; custom title will always be empty
    public let status: ChatMemberStatus

    /// Usernames of the supergroup or channel; may be null
    public let usernames: Usernames?

    /// Information about verification status of the supergroup or channel; may be null if none
    public let verificationStatus: VerificationStatus?


    public init(
        boostLevel: Int,
        date: Int,
        hasActiveStories: Bool,
        hasAutomaticTranslation: Bool,
        hasDirectMessagesGroup: Bool,
        hasForumTabs: Bool,
        hasLinkedChat: Bool,
        hasLocation: Bool,
        hasSensitiveContent: Bool,
        hasUnreadActiveStories: Bool,
        id: Int64,
        isAdministeredDirectMessagesGroup: Bool,
        isBroadcastGroup: Bool,
        isChannel: Bool,
        isDirectMessagesGroup: Bool,
        isForum: Bool,
        isSlowModeEnabled: Bool,
        joinByRequest: Bool,
        joinToSendMessages: Bool,
        memberCount: Int,
        paidMessageStarCount: Int64,
        restrictionReason: String,
        showMessageSender: Bool,
        signMessages: Bool,
        status: ChatMemberStatus,
        usernames: Usernames?,
        verificationStatus: VerificationStatus?
    ) {
        self.boostLevel = boostLevel
        self.date = date
        self.hasActiveStories = hasActiveStories
        self.hasAutomaticTranslation = hasAutomaticTranslation
        self.hasDirectMessagesGroup = hasDirectMessagesGroup
        self.hasForumTabs = hasForumTabs
        self.hasLinkedChat = hasLinkedChat
        self.hasLocation = hasLocation
        self.hasSensitiveContent = hasSensitiveContent
        self.hasUnreadActiveStories = hasUnreadActiveStories
        self.id = id
        self.isAdministeredDirectMessagesGroup = isAdministeredDirectMessagesGroup
        self.isBroadcastGroup = isBroadcastGroup
        self.isChannel = isChannel
        self.isDirectMessagesGroup = isDirectMessagesGroup
        self.isForum = isForum
        self.isSlowModeEnabled = isSlowModeEnabled
        self.joinByRequest = joinByRequest
        self.joinToSendMessages = joinToSendMessages
        self.memberCount = memberCount
        self.paidMessageStarCount = paidMessageStarCount
        self.restrictionReason = restrictionReason
        self.showMessageSender = showMessageSender
        self.signMessages = signMessages
        self.status = status
        self.usernames = usernames
        self.verificationStatus = verificationStatus
    }
}

