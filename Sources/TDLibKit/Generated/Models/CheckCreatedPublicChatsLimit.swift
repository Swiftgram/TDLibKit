//
//  CheckCreatedPublicChatsLimit.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached. The limit can be increased with Telegram Premium
public struct CheckCreatedPublicChatsLimit: Codable, Equatable, Hashable {

    /// Type of the public chats for which to check the limit
    public let type: PublicChatType?


    public init(type: PublicChatType?) {
        self.type = type
    }
}

