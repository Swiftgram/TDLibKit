//
//  AvailableGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Describes a gift that is available for purchase
public struct AvailableGift: Codable, Equatable, Hashable {

    /// The gift
    public let gift: Gift

    /// The minimum price for the gifts available for resale; 0 if there are no such gifts
    public let minResaleStarCount: Int64

    /// Number of gifts that are available for resale
    public let resaleCount: Int

    /// The title of the upgraded gift; empty if the gift isn't available for resale
    public let title: String


    public init(
        gift: Gift,
        minResaleStarCount: Int64,
        resaleCount: Int,
        title: String
    ) {
        self.gift = gift
        self.minResaleStarCount = minResaleStarCount
        self.resaleCount = resaleCount
        self.title = title
    }
}

