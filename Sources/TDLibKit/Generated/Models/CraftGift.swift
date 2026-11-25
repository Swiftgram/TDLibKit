//
//  CraftGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Crafts a new gift from other gifts that will be permanently lost
public struct CraftGift: Codable, Equatable, Hashable {

    /// Identifiers of the gifts to use for crafting. In the case of a successful craft, the resulting gift will have the number of the first gift. Consequently, unless getOption("can_craft_with_minted_first_gift") is true, the first gift must not be minted, which means it must have an empty gift_address
    public let receivedGiftIds: [String]?


    public init(receivedGiftIds: [String]?) {
        self.receivedGiftIds = receivedGiftIds
    }
}

