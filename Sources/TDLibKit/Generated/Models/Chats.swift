//
//  Chats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Represents a list of chats
public struct Chats: Codable {

    /// List of chat identifiers
    public let chatIds: [Int64]

    /// Approximate total count of chats found
    public let totalCount: Int


    public init(
        chatIds: [Int64],
        totalCount: Int
    ) {
        self.chatIds = chatIds
        self.totalCount = totalCount
    }
}

