//
//  GetCreatedPublicChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Returns a list of public chats of the specified type, owned by the user
public struct GetCreatedPublicChats: Codable {

    /// Type of the public chats to return
    public let type: PublicChatType


    public init(type: PublicChatType) {
        self.type = type
    }
}
