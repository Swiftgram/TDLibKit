//
//  Messages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-6ba394fc
//  https://github.com/tdlib/td/tree/6ba394fc
//

import Foundation


/// Contains a list of messages
public struct Messages: Codable, Equatable {

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

