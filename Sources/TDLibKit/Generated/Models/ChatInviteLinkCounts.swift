//
//  ChatInviteLinkCounts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
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

