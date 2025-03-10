//
//  GetChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-207f3be7
//  https://github.com/tdlib/td/tree/207f3be7
//

import Foundation


/// Returns information about a chat folder by its identifier
public struct GetChatFolder: Codable, Equatable, Hashable {

    /// Chat folder identifier
    public let chatFolderId: Int?


    public init(chatFolderId: Int?) {
        self.chatFolderId = chatFolderId
    }
}

