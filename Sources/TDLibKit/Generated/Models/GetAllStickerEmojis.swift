//
//  GetAllStickerEmojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns unique emoji that correspond to stickers to be found by getStickers(sticker_type, query, 1000000, chat_id)
public struct GetAllStickerEmojis: Codable, Equatable, Hashable {

    /// Chat identifier for which to find stickers
    public let chatId: Int64?

    /// Search query
    public let query: String?

    /// Pass true if only the main emoji for each found sticker must be included in the result
    public let returnOnlyMainEmoji: Bool?

    /// Type of the stickers to search for
    public let stickerType: StickerType?


    public init(
        chatId: Int64?,
        query: String?,
        returnOnlyMainEmoji: Bool?,
        stickerType: StickerType?
    ) {
        self.chatId = chatId
        self.query = query
        self.returnOnlyMainEmoji = returnOnlyMainEmoji
        self.stickerType = stickerType
    }
}

