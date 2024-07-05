//
//  Chats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-3cd93569
//  https://github.com/tdlib/td/tree/3cd93569
//

import Foundation


/// Represents a list of chats
public struct Chats: Codable, Equatable, Hashable {

    /// List of chat identifiers
    public let chatIds: [Int64]

    /// Approximate total number of chats found
    public let totalCount: Int


    public init(
        chatIds: [Int64],
        totalCount: Int
    ) {
        self.chatIds = chatIds
        self.totalCount = totalCount
    }
}

