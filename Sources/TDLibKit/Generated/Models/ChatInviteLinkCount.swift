//
//  ChatInviteLinkCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Describes a chat administrator with a number of active and revoked chat invite links
public struct ChatInviteLinkCount: Codable, Equatable, Hashable {

    /// Number of active invite links
    public let inviteLinkCount: Int

    /// Number of revoked invite links
    public let revokedInviteLinkCount: Int

    /// Administrator's user identifier
    public let userId: Int64


    public init(
        inviteLinkCount: Int,
        revokedInviteLinkCount: Int,
        userId: Int64
    ) {
        self.inviteLinkCount = inviteLinkCount
        self.revokedInviteLinkCount = revokedInviteLinkCount
        self.userId = userId
    }
}

