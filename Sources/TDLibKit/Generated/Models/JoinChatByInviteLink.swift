//
//  JoinChatByInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Uses an invite link to add the current user to the chat if possible
public struct JoinChatByInviteLink: Codable, Equatable, Hashable {

    /// Invite link to use
    public let inviteLink: String?


    public init(inviteLink: String?) {
        self.inviteLink = inviteLink
    }
}

