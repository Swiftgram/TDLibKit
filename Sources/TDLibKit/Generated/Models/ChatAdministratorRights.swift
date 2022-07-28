//
//  ChatAdministratorRights.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes rights of the administrator
public struct ChatAdministratorRights: Codable, Equatable {

    /// True, if the administrator can change the chat title, photo, and other settings
    public let canChangeInfo: Bool

    /// True, if the administrator can delete messages of other users
    public let canDeleteMessages: Bool

    /// True, if the administrator can edit messages of other users and pin messages; applicable to channels only
    public let canEditMessages: Bool

    /// True, if the administrator can invite new users to the chat
    public let canInviteUsers: Bool

    /// True, if the administrator can get chat event log, get chat statistics, get message statistics in channels, get channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only
    public let canManageChat: Bool

    /// True, if the administrator can manage video chats
    public let canManageVideoChats: Bool

    /// True, if the administrator can pin messages; applicable to basic groups and supergroups only
    public let canPinMessages: Bool

    /// True, if the administrator can create channel posts; applicable to channels only
    public let canPostMessages: Bool

    /// True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
    public let canPromoteMembers: Bool

    /// True, if the administrator can restrict, ban, or unban chat members; always true for channels
    public let canRestrictMembers: Bool

    /// True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
    public let isAnonymous: Bool


    public init(
        canChangeInfo: Bool,
        canDeleteMessages: Bool,
        canEditMessages: Bool,
        canInviteUsers: Bool,
        canManageChat: Bool,
        canManageVideoChats: Bool,
        canPinMessages: Bool,
        canPostMessages: Bool,
        canPromoteMembers: Bool,
        canRestrictMembers: Bool,
        isAnonymous: Bool
    ) {
        self.canChangeInfo = canChangeInfo
        self.canDeleteMessages = canDeleteMessages
        self.canEditMessages = canEditMessages
        self.canInviteUsers = canInviteUsers
        self.canManageChat = canManageChat
        self.canManageVideoChats = canManageVideoChats
        self.canPinMessages = canPinMessages
        self.canPostMessages = canPostMessages
        self.canPromoteMembers = canPromoteMembers
        self.canRestrictMembers = canRestrictMembers
        self.isAnonymous = isAnonymous
    }
}

