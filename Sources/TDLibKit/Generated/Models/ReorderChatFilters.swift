//
//  ReorderChatFilters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes the order of chat filters
public struct ReorderChatFilters: Codable, Equatable {

    /// Identifiers of chat filters in the new correct order
    public let chatFilterIds: [Int]?

    /// Position of the main chat list among chat filters, 0-based. Can be non-zero only for Premium users
    public let mainChatListPosition: Int?


    public init(
        chatFilterIds: [Int]?,
        mainChatListPosition: Int?
    ) {
        self.chatFilterIds = chatFilterIds
        self.mainChatListPosition = mainChatListPosition
    }
}

