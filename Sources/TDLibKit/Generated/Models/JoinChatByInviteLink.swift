//
//  JoinChatByInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-1cace9e6
//  https://github.com/tdlib/td/tree/1cace9e6
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

