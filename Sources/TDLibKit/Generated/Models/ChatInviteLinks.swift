//
//  ChatInviteLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-2725f7c5
//  https://github.com/tdlib/td/tree/2725f7c5
//

import Foundation


/// Contains a list of chat invite links
public struct ChatInviteLinks: Codable, Equatable {

    /// List of invite links
    public let inviteLinks: [ChatInviteLink]

    /// Approximate total count of chat invite links found
    public let totalCount: Int


    public init(
        inviteLinks: [ChatInviteLink],
        totalCount: Int
    ) {
        self.inviteLinks = inviteLinks
        self.totalCount = totalCount
    }
}

