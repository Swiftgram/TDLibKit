//
//  GetTopChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
//

import Foundation


/// Returns a list of frequently used chats
public struct GetTopChats: Codable, Equatable, Hashable {

    /// Category of chats to be returned
    public let category: TopChatCategory?

    /// The maximum number of chats to be returned; up to 30
    public let limit: Int?


    public init(
        category: TopChatCategory?,
        limit: Int?
    ) {
        self.category = category
        self.limit = limit
    }
}

