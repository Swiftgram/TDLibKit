//
//  CreateChatFolderInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Creates a new invite link for a chat folder. A link can be created for a chat folder if it has only pinned and included chats
public struct CreateChatFolderInviteLink: Codable, Equatable, Hashable {

    /// Chat folder identifier
    public let chatFolderId: Int?

    /// Identifiers of chats to be accessible by the invite link. Use getChatsForChatFolderInviteLink to get suitable chats. Basic groups will be automatically converted to supergroups before link creation
    public let chatIds: [Int64]?

    /// Name of the link; 0-32 characters
    public let name: String?


    public init(
        chatFolderId: Int?,
        chatIds: [Int64]?,
        name: String?
    ) {
        self.chatFolderId = chatFolderId
        self.chatIds = chatIds
        self.name = name
    }
}

