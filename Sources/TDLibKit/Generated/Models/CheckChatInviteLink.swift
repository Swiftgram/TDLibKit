//
//  CheckChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-9c9a74c5
//  https://github.com/tdlib/td/tree/9c9a74c5
//

import Foundation


/// Checks the validity of an invite link for a chat and returns information about the corresponding chat
public struct CheckChatInviteLink: Codable, Equatable {

    /// Invite link to be checked
    public let inviteLink: String?


    public init(inviteLink: String?) {
        self.inviteLink = inviteLink
    }
}

