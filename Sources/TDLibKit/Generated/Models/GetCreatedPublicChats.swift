//
//  GetCreatedPublicChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Returns a list of public chats of the specified type, owned by the user
public struct GetCreatedPublicChats: Codable, Equatable {

    /// Type of the public chats to return
    public let type: PublicChatType?


    public init(type: PublicChatType?) {
        self.type = type
    }
}

