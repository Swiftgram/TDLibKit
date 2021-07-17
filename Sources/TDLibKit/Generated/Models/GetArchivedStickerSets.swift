//
//  GetArchivedStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Returns a list of archived sticker sets
public struct GetArchivedStickerSets: Codable {

    /// Pass true to return mask stickers sets; pass false to return ordinary sticker sets
    public let isMasks: Bool

    /// The maximum number of sticker sets to return
    public let limit: Int

    /// Identifier of the sticker set from which to return the result
    public let offsetStickerSetId: TdInt64


    public init(
        isMasks: Bool,
        limit: Int,
        offsetStickerSetId: TdInt64
    ) {
        self.isMasks = isMasks
        self.limit = limit
        self.offsetStickerSetId = offsetStickerSetId
    }
}

