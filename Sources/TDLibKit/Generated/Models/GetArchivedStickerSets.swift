//
//  GetArchivedStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-a78245ee
//  https://github.com/tdlib/td/tree/a78245ee
//

import Foundation


/// Returns a list of archived sticker sets
public struct GetArchivedStickerSets: Codable, Equatable {

    /// Pass true to return mask stickers sets; pass false to return ordinary sticker sets
    public let isMasks: Bool?

    /// The maximum number of sticker sets to return; up to 100
    public let limit: Int?

    /// Identifier of the sticker set from which to return the result
    public let offsetStickerSetId: TdInt64?


    public init(
        isMasks: Bool?,
        limit: Int?,
        offsetStickerSetId: TdInt64?
    ) {
        self.isMasks = isMasks
        self.limit = limit
        self.offsetStickerSetId = offsetStickerSetId
    }
}

