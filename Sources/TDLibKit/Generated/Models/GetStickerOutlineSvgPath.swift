//
//  GetStickerOutlineSvgPath.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Returns outline of a sticker as an SVG path. This is an offline method. Returns an empty string if the outline isn't known
public struct GetStickerOutlineSvgPath: Codable, Equatable, Hashable {

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

