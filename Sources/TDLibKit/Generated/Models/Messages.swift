//
//  Messages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-12c1689b
//  https://github.com/tdlib/td/tree/12c1689b
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

