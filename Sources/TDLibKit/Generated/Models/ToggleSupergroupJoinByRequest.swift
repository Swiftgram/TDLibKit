//
//  ToggleSupergroupJoinByRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators; requires can_restrict_members administrator right
public struct ToggleSupergroupJoinByRequest: Codable, Equatable, Hashable {

    /// Pass true to apply the change to the existing invite links, including primary links
    public let applyToInviteLinks: Bool?

    /// Identifier of the bot which will be the guard bot in the group; pass 0 if none; ignored if join_by_request == false. The bot must have administrator privileges and can_invite_users right in the supergroup chat, and must have userTypeBot.is_guard == true
    public let guardBotUserId: Int64?

    /// New value of join_by_request
    public let joinByRequest: Bool?

    /// Identifier of the supergroup that isn't a broadcast group and isn't a channel direct message group
    public let supergroupId: Int64?


    public init(
        applyToInviteLinks: Bool?,
        guardBotUserId: Int64?,
        joinByRequest: Bool?,
        supergroupId: Int64?
    ) {
        self.applyToInviteLinks = applyToInviteLinks
        self.guardBotUserId = guardBotUserId
        self.joinByRequest = joinByRequest
        self.supergroupId = supergroupId
    }
}

