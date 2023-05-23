//
//  ChatFolderInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-3d4b4ac0
//  https://github.com/tdlib/td/tree/3d4b4ac0
//

import Foundation


/// Contains a chat folder invite link
public struct ChatFolderInviteLink: Codable, Equatable {

    /// Identifiers of chats, included in the link
    public let chatIds: [Int64]

    /// The chat folder invite link
    public let inviteLink: String

    /// Name of the link
    public let name: String


    public init(
        chatIds: [Int64],
        inviteLink: String,
        name: String
    ) {
        self.chatIds = chatIds
        self.inviteLink = inviteLink
        self.name = name
    }
}

