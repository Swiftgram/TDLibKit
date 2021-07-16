//
//  ChatInviteLinkCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Describes a chat administrator with a number of active and revoked chat invite links
public struct ChatInviteLinkCount: Codable {

    /// Number of active invite links
    public let inviteLinkCount: Int

    /// Number of revoked invite links
    public let revokedInviteLinkCount: Int

    /// Administrator's user identifier
    public let userId: Int


    public init(
        inviteLinkCount: Int,
        revokedInviteLinkCount: Int,
        userId: Int
    ) {
        self.inviteLinkCount = inviteLinkCount
        self.revokedInviteLinkCount = revokedInviteLinkCount
        self.userId = userId
    }
}

