//
//  GetCreatedPublicChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-d0ff90bb
//  https://github.com/tdlib/td/tree/d0ff90bb
//

import Foundation


/// Returns a list of public chats of the specified type, owned by the user
public struct GetCreatedPublicChats: Codable, Equatable, Hashable {

    /// Type of the public chats to return
    public let type: PublicChatType?


    public init(type: PublicChatType?) {
        self.type = type
    }
}

