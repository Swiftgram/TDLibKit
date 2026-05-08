//
//  ChatInviteLinkCounts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-49b3bcbb
//  https://github.com/tdlib/td/tree/49b3bcbb
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

