//
//  CreateChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
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

