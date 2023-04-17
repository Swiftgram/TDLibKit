//
//  ReorderChatFilters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
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

