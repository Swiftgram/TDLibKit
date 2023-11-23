//
//  GetChatFolderChatCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Returns approximate number of chats in a being created chat folder. Main and archive chat lists must be fully preloaded for this function to work correctly
public struct GetChatFolderChatCount: Codable, Equatable, Hashable {

    /// The new chat folder
    public let folder: ChatFolder?


    public init(folder: ChatFolder?) {
        self.folder = folder
    }
}

