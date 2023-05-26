//
//  ProcessChatFolderNewChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-54b34e91
//  https://github.com/tdlib/td/tree/54b34e91
//

import Foundation


/// Process new chats added to a shareable chat folder by its owner
public struct ProcessChatFolderNewChats: Codable, Equatable {

    /// Identifiers of the new chats, which are added to the chat folder. The chats are automatically joined if they aren't joined yet
    public let addedChatIds: [Int64]?

    /// Chat folder identifier
    public let chatFolderId: Int?


    public init(
        addedChatIds: [Int64]?,
        chatFolderId: Int?
    ) {
        self.addedChatIds = addedChatIds
        self.chatFolderId = chatFolderId
    }
}

