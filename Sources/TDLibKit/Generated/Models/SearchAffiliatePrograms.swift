//
//  SearchAffiliatePrograms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Searches affiliate programs that can be applied to the given chat
public struct SearchAffiliatePrograms: Codable, Equatable, Hashable {

    /// Identifier of the chat for which affiliate programs are searched for. Can be an identifier of the Saved Messages chat, of a chat with an owned bot, or of a channel chat with can_post_messages administrator right
    public let chatId: Int64?

    /// The maximum number of affiliate programs to return
    public let limit: Int?

    /// Offset of the first affiliate program to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Sort order for the results
    public let sortOrder: AffiliateProgramSortOrder?


    public init(
        chatId: Int64?,
        limit: Int?,
        offset: String?,
        sortOrder: AffiliateProgramSortOrder?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.offset = offset
        self.sortOrder = sortOrder
    }
}

