//
//  ChatFolderInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Contains a chat folder invite link
public struct ChatFolderInviteLink: Codable, Equatable, Hashable {

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

