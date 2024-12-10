//
//  GetStickerOutline.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Returns outline of a sticker; this is an offline request. Returns a 404 error if the outline isn't known
public struct GetStickerOutline: Codable, Equatable, Hashable {

    /// Pass true to get the outline scaled for animated emoji
    public let forAnimatedEmoji: Bool?

    /// Pass true to get the outline scaled for clicked animated emoji message
    public let forClickedAnimatedEmojiMessage: Bool?

    /// File identifier of the sticker
    public let stickerFileId: Int?


    public init(
        forAnimatedEmoji: Bool?,
        forClickedAnimatedEmojiMessage: Bool?,
        stickerFileId: Int?
    ) {
        self.forAnimatedEmoji = forAnimatedEmoji
        self.forClickedAnimatedEmojiMessage = forClickedAnimatedEmojiMessage
        self.stickerFileId = stickerFileId
    }
}

