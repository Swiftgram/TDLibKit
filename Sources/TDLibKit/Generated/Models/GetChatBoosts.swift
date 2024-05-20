//
//  GetChatBoosts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns the list of boosts applied to a chat; requires administrator rights in the chat
public struct GetChatBoosts: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// The maximum number of boosts to be returned; up to 100. For optimal performance, the number of returned boosts can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Pass true to receive only boosts received from gift codes and giveaways created by the chat
    public let onlyGiftCodes: Bool?


    public init(
        chatId: Int64?,
        limit: Int?,
        offset: String?,
        onlyGiftCodes: Bool?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.offset = offset
        self.onlyGiftCodes = onlyGiftCodes
    }
}

