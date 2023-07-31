//
//  ChatInviteLinkCounts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-6a6cd8af
//  https://github.com/tdlib/td/tree/6a6cd8af
//

import Foundation


/// Contains a list of chat invite link counts
public struct ChatInviteLinkCounts: Codable, Equatable, Hashable {

    /// List of invite link counts
    public let inviteLinkCounts: [ChatInviteLinkCount]


    public init(inviteLinkCounts: [ChatInviteLinkCount]) {
        self.inviteLinkCounts = inviteLinkCounts
    }
}

