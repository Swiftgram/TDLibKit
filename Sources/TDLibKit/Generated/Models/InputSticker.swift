//
//  InputSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// A sticker to be sent
public struct InputSticker: Codable, Equatable, Hashable {

    /// Sticker height
    public let height: Int

    /// Sticker to be sent
    public let sticker: InputFile

    /// Sticker thumbnail; pass null to skip thumbnail uploading
    public let thumbnail: InputThumbnail?

    /// Sticker width
    public let width: Int


    public init(
        height: Int,
        sticker: InputFile,
        thumbnail: InputThumbnail?,
        width: Int
    ) {
        self.height = height
        self.sticker = sticker
        self.thumbnail = thumbnail
        self.width = width
    }
}

