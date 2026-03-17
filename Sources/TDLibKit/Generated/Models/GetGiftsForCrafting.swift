//
//  GetGiftsForCrafting.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-0ae923c4
//  https://github.com/tdlib/td/tree/0ae923c4
//

import Foundation


/// Returns upgraded gifts of the current user who can be used to craft another gifts
public struct GetGiftsForCrafting: Codable, Equatable, Hashable {

    /// The maximum number of gifts to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Identifier of the regular gift that will be used for crafting
    public let regularGiftId: TdInt64?


    public init(
        limit: Int?,
        offset: String?,
        regularGiftId: TdInt64?
    ) {
        self.limit = limit
        self.offset = offset
        self.regularGiftId = regularGiftId
    }
}

