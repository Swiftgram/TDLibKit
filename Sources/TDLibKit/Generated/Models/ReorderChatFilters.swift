//
//  ReorderChatFilters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Changes the order of chat filters
public struct ReorderChatFilters: Codable {

    /// Identifiers of chat filters in the new correct order
    public let chatFilterIds: [Int]


    public init(chatFilterIds: [Int]) {
        self.chatFilterIds = chatFilterIds
    }
}

