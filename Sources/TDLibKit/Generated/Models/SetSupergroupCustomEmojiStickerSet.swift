//
//  SetSupergroupCustomEmojiStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes the custom emoji sticker set of a supergroup; requires can_change_info administrator right. The chat must have at least chatBoostFeatures.min_custom_emoji_sticker_set_boost_level boost level to pass the corresponding color
public struct SetSupergroupCustomEmojiStickerSet: Codable, Equatable, Hashable {

    /// New value of the custom emoji sticker set identifier for the supergroup. Use 0 to remove the custom emoji sticker set in the supergroup
    public let customEmojiStickerSetId: TdInt64?

    /// Identifier of the supergroup
    public let supergroupId: Int64?


    public init(
        customEmojiStickerSetId: TdInt64?,
        supergroupId: Int64?
    ) {
        self.customEmojiStickerSetId = customEmojiStickerSetId
        self.supergroupId = supergroupId
    }
}

