//
//  JoinChatByInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-83bd3e33
//  https://github.com/tdlib/td/tree/83bd3e33
//

import Foundation


/// Uses an invite link to add the current user to the chat if possible
public struct JoinChatByInviteLink: Codable, Equatable {

    /// Invite link to use
    public let inviteLink: String?


    public init(inviteLink: String?) {
        self.inviteLink = inviteLink
    }
}

