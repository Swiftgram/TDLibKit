//
//  UploadStickerFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Uploads a file with a sticker; returns the uploaded file
public struct UploadStickerFile: Codable, Equatable {

    /// Sticker file to upload
    public let sticker: InputSticker?

    /// Sticker file owner; ignored for regular users
    public let userId: Int64?


    public init(
        sticker: InputSticker?,
        userId: Int64?
    ) {
        self.sticker = sticker
        self.userId = userId
    }
}

