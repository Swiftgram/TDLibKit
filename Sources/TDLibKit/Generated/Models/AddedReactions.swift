//
//  AddedReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-1e1ab5d1
//  https://github.com/tdlib/td/tree/1e1ab5d1
//

import Foundation


/// Represents a list of reactions added to a message
public struct AddedReactions: Codable, Equatable {

    /// The offset for the next request. If empty, there are no more results
    public let nextOffset: String

    /// The list of added reactions
    public let reactions: [AddedReaction]

    /// The total count of found reactions
    public let totalCount: Int


    public init(
        nextOffset: String,
        reactions: [AddedReaction],
        totalCount: Int
    ) {
        self.nextOffset = nextOffset
        self.reactions = reactions
        self.totalCount = totalCount
    }
}

