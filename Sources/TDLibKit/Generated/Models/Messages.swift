//
//  Messages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Contains a list of messages
public struct Messages: Codable, Equatable, Hashable {

    /// List of messages; messages may be null
    public let messages: [Message]?

    /// Approximate total number of messages found
    public let totalCount: Int


    public init(
        messages: [Message]?,
        totalCount: Int
    ) {
        self.messages = messages
        self.totalCount = totalCount
    }
}

