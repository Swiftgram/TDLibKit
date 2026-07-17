//
//  CommunityAdministratorRights.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Describes rights of the administrator in a community
public struct CommunityAdministratorRights: Codable, Equatable, Hashable {

    /// True, if the administrator can ban, or unban community members
    public let canBanMembers: Bool

    /// True, if the administrator can change the community name, photo, and other settings
    public let canChangeInfo: Bool

    /// True, if the user can change the chats added to the community
    public let canEditChatList: Bool

    /// True, if the user is an administrator. Implied by any other privilege
    public let canManageCommunity: Bool

    /// True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
    public let canPromoteMembers: Bool


    public init(
        canBanMembers: Bool,
        canChangeInfo: Bool,
        canEditChatList: Bool,
        canManageCommunity: Bool,
        canPromoteMembers: Bool
    ) {
        self.canBanMembers = canBanMembers
        self.canChangeInfo = canChangeInfo
        self.canEditChatList = canEditChatList
        self.canManageCommunity = canManageCommunity
        self.canPromoteMembers = canPromoteMembers
    }
}

