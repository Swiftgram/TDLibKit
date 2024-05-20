//
//  GetOwnedStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns sticker sets owned by the current user
public struct GetOwnedStickerSets: Codable, Equatable, Hashable {

    /// The maximum number of sticker sets to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Identifier of the sticker set from which to return owned sticker sets; use 0 to get results from the beginning
    public let offsetStickerSetId: TdInt64?


    public init(
        limit: Int?,
        offsetStickerSetId: TdInt64?
    ) {
        self.limit = limit
        self.offsetStickerSetId = offsetStickerSetId
    }
}

