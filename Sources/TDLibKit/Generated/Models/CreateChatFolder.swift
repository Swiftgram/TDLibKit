//
//  CreateChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-f441415d
//  https://github.com/tdlib/td/tree/f441415d
//

import Foundation


/// Creates new chat folder. Returns information about the created chat folder. There can be up to getOption("chat_folder_count_max") chat folders, but the limit can be increased with Telegram Premium
public struct CreateChatFolder: Codable, Equatable, Hashable {

    /// The new chat folder
    public let folder: ChatFolder?


    public init(folder: ChatFolder?) {
        self.folder = folder
    }
}

