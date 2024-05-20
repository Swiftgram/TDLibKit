//
//  GetStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns stickers from the installed sticker sets that correspond to any of the given emoji or can be found by sticker-specific keywords. If the query is non-empty, then favorite, recently used or trending stickers may also be returned
public struct GetStickers: Codable, Equatable, Hashable {

    /// Chat identifier for which to return stickers. Available custom emoji stickers may be different for different chats
    public let chatId: Int64?

    /// The maximum number of stickers to be returned
    public let limit: Int?

    /// Search query; a space-separated list of emoji or a keyword prefix. If empty, returns all known installed stickers
    public let query: String?

    /// Type of the stickers to return
    public let stickerType: StickerType?


    public init(
        chatId: Int64?,
        limit: Int?,
        query: String?,
        stickerType: StickerType?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.query = query
        self.stickerType = stickerType
    }
}

