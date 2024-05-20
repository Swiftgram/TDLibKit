//
//  GetTrendingStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns a list of trending sticker sets. For optimal performance, the number of returned sticker sets is chosen by TDLib
public struct GetTrendingStickerSets: Codable, Equatable, Hashable {

    /// The maximum number of sticker sets to be returned; up to 100. For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the specified limit, even if the end of the list has not been reached
    public let limit: Int?

    /// The offset from which to return the sticker sets; must be non-negative
    public let offset: Int?

    /// Type of the sticker sets to return
    public let stickerType: StickerType?


    public init(
        limit: Int?,
        offset: Int?,
        stickerType: StickerType?
    ) {
        self.limit = limit
        self.offset = offset
        self.stickerType = stickerType
    }
}

