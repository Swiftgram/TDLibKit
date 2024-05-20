//
//  GetArchivedStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns a list of archived sticker sets
public struct GetArchivedStickerSets: Codable, Equatable, Hashable {

    /// The maximum number of sticker sets to return; up to 100
    public let limit: Int?

    /// Identifier of the sticker set from which to return the result; use 0 to get results from the beginning
    public let offsetStickerSetId: TdInt64?

    /// Type of the sticker sets to return
    public let stickerType: StickerType?


    public init(
        limit: Int?,
        offsetStickerSetId: TdInt64?,
        stickerType: StickerType?
    ) {
        self.limit = limit
        self.offsetStickerSetId = offsetStickerSetId
        self.stickerType = stickerType
    }
}

