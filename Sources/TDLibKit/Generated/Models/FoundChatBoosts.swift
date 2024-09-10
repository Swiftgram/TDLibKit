//
//  FoundChatBoosts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-dcfd86c7
//  https://github.com/tdlib/td/tree/dcfd86c7
//

import Foundation


/// Contains a list of boosts applied to a chat
public struct FoundChatBoosts: Codable, Equatable, Hashable {

    /// List of boosts
    public let boosts: [ChatBoost]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Total number of boosts applied to the chat
    public let totalCount: Int


    public init(
        boosts: [ChatBoost],
        nextOffset: String,
        totalCount: Int
    ) {
        self.boosts = boosts
        self.nextOffset = nextOffset
        self.totalCount = totalCount
    }
}

