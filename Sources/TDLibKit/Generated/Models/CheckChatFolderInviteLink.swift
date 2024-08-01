//
//  CheckChatFolderInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Checks the validity of an invite link for a chat folder and returns information about the corresponding chat folder
public struct CheckChatFolderInviteLink: Codable, Equatable, Hashable {

    /// Invite link to be checked
    public let inviteLink: String?


    public init(inviteLink: String?) {
        self.inviteLink = inviteLink
    }
}

