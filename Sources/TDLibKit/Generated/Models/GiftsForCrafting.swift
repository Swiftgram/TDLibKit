//
//  GiftsForCrafting.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Represents a list of gifts received by a user or a chat
public struct GiftsForCrafting: Codable, Equatable, Hashable {

    /// The 4 objects that describe probabilities of the crafted gift to have the backdrop or symbol of one of the original gifts for the cases when 1, 2, 3 or 4 gifts are used in the craft correspondingly
    public let attributePersistenceProbabilities: [AttributeCraftPersistenceProbability]

    /// The list of gifts
    public let gifts: [ReceivedGift]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The total number of received gifts
    public let totalCount: Int


    public init(
        attributePersistenceProbabilities: [AttributeCraftPersistenceProbability],
        gifts: [ReceivedGift],
        nextOffset: String,
        totalCount: Int
    ) {
        self.attributePersistenceProbabilities = attributePersistenceProbabilities
        self.gifts = gifts
        self.nextOffset = nextOffset
        self.totalCount = totalCount
    }
}

