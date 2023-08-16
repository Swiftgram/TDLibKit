//
//  ChatInviteLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-d44617b4
//  https://github.com/tdlib/td/tree/d44617b4
//

import Foundation


/// Contains a list of chat invite links
public struct ChatInviteLinks: Codable, Equatable, Hashable {

    /// List of invite links
    public let inviteLinks: [ChatInviteLink]

    /// Approximate total number of chat invite links found
    public let totalCount: Int


    public init(
        inviteLinks: [ChatInviteLink],
        totalCount: Int
    ) {
        self.inviteLinks = inviteLinks
        self.totalCount = totalCount
    }
}

