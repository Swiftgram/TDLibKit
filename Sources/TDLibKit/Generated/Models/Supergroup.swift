//
//  Supergroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers
public struct Supergroup: Codable, Equatable {

    /// Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
    public let date: Int

    /// True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
    public let hasLinkedChat: Bool

    /// True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
    public let hasLocation: Bool

    /// Supergroup or channel identifier
    public let id: Int64

    /// True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members
    public let isBroadcastGroup: Bool

    /// True, if the supergroup is a channel
    public let isChannel: Bool

    /// True, if many users reported this supergroup or channel as a fake account
    public let isFake: Bool

    /// True, if many users reported this supergroup or channel as a scam
    public let isScam: Bool

    /// True, if the slow mode is enabled in the supergroup
    public let isSlowModeEnabled: Bool

    /// True, if the supergroup or channel is verified
    public let isVerified: Bool

    /// True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat
    public let joinByRequest: Bool

    /// True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups
    public let joinToSendMessages: Bool

    /// Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through searchPublicChats, searchChatsNearby, getInactiveSupergroupChats, getSuitableDiscussionChats, getGroupsInCommon, or getUserPrivacySettingRules
    public let memberCount: Int

    /// If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
    public let restrictionReason: String

    /// True, if messages sent to the channel need to contain information about the sender. This field is only applicable to channels
    public let signMessages: Bool

    /// Status of the current user in the supergroup or channel; custom title will be always empty
    public let status: ChatMemberStatus

    /// Username of the supergroup or channel; empty for private supergroups or channels
    public let username: String


    public init(
        date: Int,
        hasLinkedChat: Bool,
        hasLocation: Bool,
        id: Int64,
        isBroadcastGroup: Bool,
        isChannel: Bool,
        isFake: Bool,
        isScam: Bool,
        isSlowModeEnabled: Bool,
        isVerified: Bool,
        joinByRequest: Bool,
        joinToSendMessages: Bool,
        memberCount: Int,
        restrictionReason: String,
        signMessages: Bool,
        status: ChatMemberStatus,
        username: String
    ) {
        self.date = date
        self.hasLinkedChat = hasLinkedChat
        self.hasLocation = hasLocation
        self.id = id
        self.isBroadcastGroup = isBroadcastGroup
        self.isChannel = isChannel
        self.isFake = isFake
        self.isScam = isScam
        self.isSlowModeEnabled = isSlowModeEnabled
        self.isVerified = isVerified
        self.joinByRequest = joinByRequest
        self.joinToSendMessages = joinToSendMessages
        self.memberCount = memberCount
        self.restrictionReason = restrictionReason
        self.signMessages = signMessages
        self.status = status
        self.username = username
    }
}

