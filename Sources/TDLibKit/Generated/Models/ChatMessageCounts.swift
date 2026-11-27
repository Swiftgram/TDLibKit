//
//  ChatMessageCounts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Contains approximate numbers of messages in a chat
public struct ChatMessageCounts: Codable, Equatable, Hashable {

    /// Approximate number of messages for each of the requested filters in the same order; -1 for the numbers of messages, which are unknown locally, if only local data was requested
    public let counts: [Int]


    public init(counts: [Int]) {
        self.counts = counts
    }
}

