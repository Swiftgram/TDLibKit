//
//  ReorderChatFilters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-1cace9e6
//  https://github.com/tdlib/td/tree/1cace9e6
//

import Foundation


/// Changes the order of chat filters
public struct ReorderChatFilters: Codable, Equatable {

    /// Identifiers of chat filters in the new correct order
    public let chatFilterIds: [Int]?


    public init(chatFilterIds: [Int]?) {
        self.chatFilterIds = chatFilterIds
    }
}

