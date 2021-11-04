//
//  ChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Contains a chat invite link
public struct ChatInviteLink: Codable {

    /// User identifier of an administrator created the link
    public let creatorUserId: Int64

    /// Point in time (Unix timestamp) when the link was created
    public let date: Int

    /// Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown
    public let editDate: Int

    /// Point in time (Unix timestamp) when the link will expire; 0 if never
    public let expireDate: Int

    /// Chat invite link
    public let inviteLink: String

    /// True, if the link is primary. Primary invite link can't have expire date or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time
    public let isPrimary: Bool

    /// True, if the link was revoked
    public let isRevoked: Bool

    /// Number of chat members, which joined the chat using the link
    public let memberCount: Int

    /// The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited
    public let memberLimit: Int


    public init(
        creatorUserId: Int64,
        date: Int,
        editDate: Int,
        expireDate: Int,
        inviteLink: String,
        isPrimary: Bool,
        isRevoked: Bool,
        memberCount: Int,
        memberLimit: Int
    ) {
        self.creatorUserId = creatorUserId
        self.date = date
        self.editDate = editDate
        self.expireDate = expireDate
        self.inviteLink = inviteLink
        self.isPrimary = isPrimary
        self.isRevoked = isRevoked
        self.memberCount = memberCount
        self.memberLimit = memberLimit
    }
}

