//
//  Photo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Describes a photo
public struct Photo: Codable, Equatable, Hashable {

    /// True, if stickers were added to the photo. The list of corresponding sticker sets can be received using getAttachedStickerSets
    public let hasStickers: Bool

    /// Photo minithumbnail; may be null
    public let minithumbnail: Minithumbnail?

    /// Available variants of the photo, in different sizes
    public let sizes: [PhotoSize]


    public init(
        hasStickers: Bool,
        minithumbnail: Minithumbnail?,
        sizes: [PhotoSize]
    ) {
        self.hasStickers = hasStickers
        self.minithumbnail = minithumbnail
        self.sizes = sizes
    }
}

