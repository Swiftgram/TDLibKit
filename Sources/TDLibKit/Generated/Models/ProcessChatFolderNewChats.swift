//
//  ProcessChatFolderNewChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Process new chats added to a shareable chat folder by its owner
public struct ProcessChatFolderNewChats: Codable, Equatable, Hashable {

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

