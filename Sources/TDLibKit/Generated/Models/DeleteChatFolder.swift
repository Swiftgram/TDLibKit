//
//  DeleteChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Deletes an existing chat folder
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

