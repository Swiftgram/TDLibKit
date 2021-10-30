//
//  GetTrendingStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-377bd189
//  https://github.com/tdlib/td/tree/377bd189
//

import Foundation


/// Returns a list of trending sticker sets. For optimal performance, the number of returned sticker sets is chosen by TDLib
public struct GetTrendingStickerSets: Codable {

    /// The maximum number of sticker sets to be returned; must be non-negative. For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the specified limit, even if the end of the list has not been reached
    public let limit: Int?

    /// The offset from which to return the sticker sets; must be non-negative
    public let offset: Int?


    public init(
        limit: Int?,
        offset: Int?
    ) {
        self.limit = limit
        self.offset = offset
    }
}

