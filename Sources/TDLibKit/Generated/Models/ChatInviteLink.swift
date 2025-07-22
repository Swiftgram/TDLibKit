//
//  ChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-da4e46f2
//  https://github.com/tdlib/td/tree/da4e46f2
//

import Foundation


/// Contains a chat invite link
public struct ChatInviteLink: Codable, Equatable, Hashable {

    /// True, if the link only creates join request. If true, total number of joining members will be unlimited
    public let createsJoinRequest: Bool

    /// User identifier of an administrator created the link
    public let creatorUserId: Int64

    /// Point in time (Unix timestamp) when the link was created
    public let date: Int

    /// Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown
    public let editDate: Int

    /// Point in time (Unix timestamp) when the link will expire; 0 if never
    public let expirationDate: Int

    /// Number of chat members, which joined the chat using the link, but have already left because of expired subscription; for subscription links only
    public let expiredMemberCount: Int

    /// Chat invite link
    public let inviteLink: String

    /// True, if the link is primary. Primary invite link can't have name, expiration date, or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time
    public let isPrimary: Bool

    /// True, if the link was revoked
    public let isRevoked: Bool

    /// Number of chat members, which joined the chat using the link
    public let memberCount: Int

    /// The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited. Always 0 if the link requires approval
    public let memberLimit: Int

    /// Name of the link
    public let name: String

    /// Number of pending join requests created using this link
    public let pendingJoinRequestCount: Int

    /// Information about subscription plan that is applied to the users joining the chat by the link; may be null if the link doesn't require subscription
    public let subscriptionPricing: StarSubscriptionPricing?


    public init(
        createsJoinRequest: Bool,
        creatorUserId: Int64,
        date: Int,
        editDate: Int,
        expirationDate: Int,
        expiredMemberCount: Int,
        inviteLink: String,
        isPrimary: Bool,
        isRevoked: Bool,
        memberCount: Int,
        memberLimit: Int,
        name: String,
        pendingJoinRequestCount: Int,
        subscriptionPricing: StarSubscriptionPricing?
    ) {
        self.createsJoinRequest = createsJoinRequest
        self.creatorUserId = creatorUserId
        self.date = date
        self.editDate = editDate
        self.expirationDate = expirationDate
        self.expiredMemberCount = expiredMemberCount
        self.inviteLink = inviteLink
        self.isPrimary = isPrimary
        self.isRevoked = isRevoked
        self.memberCount = memberCount
        self.memberLimit = memberLimit
        self.name = name
        self.pendingJoinRequestCount = pendingJoinRequestCount
        self.subscriptionPricing = subscriptionPricing
    }
}

