//
//  GetCreatedPublicChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
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

