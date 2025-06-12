//
//  EditChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Edits existing chat folder. Returns information about the edited chat folder
public struct EditChatFolder: Codable, Equatable, Hashable {

    /// Chat folder identifier
    public let chatFolderId: Int?

    /// The edited chat folder
    public let folder: ChatFolder?


    public init(
        chatFolderId: Int?,
        folder: ChatFolder?
    ) {
        self.chatFolderId = chatFolderId
        self.folder = folder
    }
}

