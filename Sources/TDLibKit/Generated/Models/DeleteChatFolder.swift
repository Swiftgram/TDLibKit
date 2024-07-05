//
//  DeleteChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-3cd93569
//  https://github.com/tdlib/td/tree/3cd93569
//

import Foundation


/// Deletes existing chat folder
public struct DeleteChatFolder: Codable, Equatable, Hashable {

    /// Chat folder identifier
    public let chatFolderId: Int?

    /// Identifiers of the chats to leave. The chats must be pinned or always included in the folder
    public let leaveChatIds: [Int64]?


    public init(
        chatFolderId: Int?,
        leaveChatIds: [Int64]?
    ) {
        self.chatFolderId = chatFolderId
        self.leaveChatIds = leaveChatIds
    }
}

