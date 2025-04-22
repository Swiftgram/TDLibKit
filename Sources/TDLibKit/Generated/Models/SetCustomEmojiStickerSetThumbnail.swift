//
//  SetCustomEmojiStickerSetThumbnail.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-42b1b825
//  https://github.com/tdlib/td/tree/42b1b825
//

import Foundation


/// Sets a custom emoji sticker set thumbnail
public struct SetCustomEmojiStickerSetThumbnail: Codable, Equatable, Hashable {

    /// Identifier of the custom emoji from the sticker set, which will be set as sticker set thumbnail; pass 0 to remove the sticker set thumbnail
    public let customEmojiId: TdInt64?

    /// Sticker set name. The sticker set must be owned by the current user
    public let name: String?


    public init(
        customEmojiId: TdInt64?,
        name: String?
    ) {
        self.customEmojiId = customEmojiId
        self.name = name
    }
}

