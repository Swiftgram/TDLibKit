//
//  GetChatBoosts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-b41a51f2
//  https://github.com/tdlib/td/tree/b41a51f2
//

import Foundation


/// Returns list of boosts applied to a chat. The user must be an administrator in the channel chat to get the list of boosts
public struct GetChatBoosts: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// The maximum number of boosts to be returned; up to 100. For optimal performance, the number of returned boosts can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        chatId: Int64?,
        limit: Int?,
        offset: String?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.offset = offset
    }
}

