//
//  ChatInviteLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Contains a list of chat invite links
public struct ChatInviteLinks: Codable, Equatable {

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

