//
//  CraftGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Crafts a new gift from other gifts that will be permanently lost
public struct CraftGift: Codable, Equatable, Hashable {

    /// Identifier of the gifts to use for crafting. In the case of a successful craft, the resulting gift will have the number of the first gift. Consequently, the first gift must not have been withdrawn to the TON blockchain as an NFT and must have an empty gift_address
    public let receivedGiftIds: [String]?


    public init(receivedGiftIds: [String]?) {
        self.receivedGiftIds = receivedGiftIds
    }
}

