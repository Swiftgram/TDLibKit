//
//  ChatList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a list of chats
public indirect enum ChatList: Codable, Equatable, Hashable {

    /// A main list of chats
    case chatListMain

    /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives
    case chatListArchive

    /// A list of chats added to a chat folder
    case chatListFolder(ChatListFolder)


    private enum Kind: String, Codable {
        case chatListMain
        case chatListArchive
        case chatListFolder
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatListMain:
            self = .chatListMain
        case .chatListArchive:
            self = .chatListArchive
        case .chatListFolder:
            let value = try ChatListFolder(from: decoder)
            self = .chatListFolder(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatListMain:
            try container.encode(Kind.chatListMain, forKey: .type)
        case .chatListArchive:
            try container.encode(Kind.chatListArchive, forKey: .type)
        case .chatListFolder(let value):
            try container.encode(Kind.chatListFolder, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A list of chats added to a chat folder
public struct ChatListFolder: Codable, Equatable, Hashable {

    /// Chat folder identifier
    public let chatFolderId: Int


    public init(chatFolderId: Int) {
        self.chatFolderId = chatFolderId
    }
}

