//
//  GetChatFolderNewChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-f441415d
//  https://github.com/tdlib/td/tree/f441415d
//

import Foundation


/// Returns new chats added to a shareable chat folder by its owner. The method must be called at most once in getOption("chat_folder_new_chats_update_period") for the given chat folder
public struct GetChatFolderNewChats: Codable, Equatable, Hashable {

    /// Chat folder identifier
    public let chatFolderId: Int?


    public init(chatFolderId: Int?) {
        self.chatFolderId = chatFolderId
    }
}

