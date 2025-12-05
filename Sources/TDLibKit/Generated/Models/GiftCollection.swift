//
//  GiftCollection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes collection of gifts
public struct GiftCollection: Codable, Equatable, Hashable, Identifiable {

    /// Total number of gifts in the collection
    public let giftCount: Int

    /// Icon of the collection; may be null if none
    public let icon: Sticker?

    /// Unique identifier of the collection
    public let id: Int

    /// Name of the collection
    public let name: String


    public init(
        giftCount: Int,
        icon: Sticker?,
        id: Int,
        name: String
    ) {
        self.giftCount = giftCount
        self.icon = icon
        self.id = id
        self.name = name
    }
}

