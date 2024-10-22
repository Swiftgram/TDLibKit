//
//  AddedReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
//

import Foundation


/// Represents a list of reactions added to a message
public struct AddedReactions: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The list of added reactions
    public let reactions: [AddedReaction]

    /// The total number of found reactions
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

