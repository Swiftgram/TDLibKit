//
//  ReorderChatFilters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-18cd0dd9
//  https://github.com/tdlib/td/tree/18cd0dd9
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

