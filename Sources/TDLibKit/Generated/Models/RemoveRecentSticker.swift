//
//  RemoveRecentSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Removes a sticker from the list of recently used stickers
public struct RemoveRecentSticker: Codable {

    /// Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers
    public let isAttached: Bool

    /// Sticker file to delete
    public let sticker: InputFile


    public init(
        isAttached: Bool,
        sticker: InputFile
    ) {
        self.isAttached = isAttached
        self.sticker = sticker
    }
}
