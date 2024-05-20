//
//  AddChatFolderByInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Adds a chat folder by an invite link
public struct AddChatFolderByInviteLink: Codable, Equatable, Hashable {

    /// Identifiers of the chats added to the chat folder. The chats are automatically joined if they aren't joined yet
    public let chatIds: [Int64]?

    /// Invite link for the chat folder
    public let inviteLink: String?


    public init(
        chatIds: [Int64]?,
        inviteLink: String?
    ) {
        self.chatIds = chatIds
        self.inviteLink = inviteLink
    }
}

