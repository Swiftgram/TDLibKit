//
//  PublicForwards.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Represents a list of public forwards and reposts as a story of a message or a story
public struct PublicForwards: Codable, Equatable, Hashable {

    /// List of found public forwards and reposts
    public let forwards: [PublicForward]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Approximate total number of messages and stories found
    public let totalCount: Int


    public init(
        forwards: [PublicForward],
        nextOffset: String,
        totalCount: Int
    ) {
        self.forwards = forwards
        self.nextOffset = nextOffset
        self.totalCount = totalCount
    }
}

