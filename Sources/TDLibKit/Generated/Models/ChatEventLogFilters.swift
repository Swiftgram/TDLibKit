//
//  ChatEventLogFilters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a set of filters used to obtain a chat event log
public struct ChatEventLogFilters: Codable, Equatable, Hashable {

    /// True, if forum-related actions need to be returned
    public let forumChanges: Bool

    /// True, if changes in chat information need to be returned
    public let infoChanges: Bool

    /// True, if changes to invite links need to be returned
    public let inviteLinkChanges: Bool

    /// True, if invited member events need to be returned
    public let memberInvites: Bool

    /// True, if members joining events need to be returned
    public let memberJoins: Bool

    /// True, if members leaving events need to be returned
    public let memberLeaves: Bool

    /// True, if member promotion/demotion events need to be returned
    public let memberPromotions: Bool

    /// True, if member restricted/unrestricted/banned/unbanned events need to be returned
    public let memberRestrictions: Bool

    /// True, if message deletions need to be returned
    public let messageDeletions: Bool

    /// True, if message edits need to be returned
    public let messageEdits: Bool

    /// True, if pin/unpin events need to be returned
    public let messagePins: Bool

    /// True, if changes in chat settings need to be returned
    public let settingChanges: Bool

    /// True, if video chat actions need to be returned
    public let videoChatChanges: Bool


    public init(
        forumChanges: Bool,
        infoChanges: Bool,
        inviteLinkChanges: Bool,
        memberInvites: Bool,
        memberJoins: Bool,
        memberLeaves: Bool,
        memberPromotions: Bool,
        memberRestrictions: Bool,
        messageDeletions: Bool,
        messageEdits: Bool,
        messagePins: Bool,
        settingChanges: Bool,
        videoChatChanges: Bool
    ) {
        self.forumChanges = forumChanges
        self.infoChanges = infoChanges
        self.inviteLinkChanges = inviteLinkChanges
        self.memberInvites = memberInvites
        self.memberJoins = memberJoins
        self.memberLeaves = memberLeaves
        self.memberPromotions = memberPromotions
        self.memberRestrictions = memberRestrictions
        self.messageDeletions = messageDeletions
        self.messageEdits = messageEdits
        self.messagePins = messagePins
        self.settingChanges = settingChanges
        self.videoChatChanges = videoChatChanges
    }
}

