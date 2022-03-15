//
//  JoinChatByInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
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

