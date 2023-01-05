//
//  RemoveRecentSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-bc7734a2
//  https://github.com/tdlib/td/tree/bc7734a2
//

import Foundation


/// Removes a sticker from the list of recently used stickers
public struct RemoveRecentSticker: Codable, Equatable {

    /// Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers
    public let isAttached: Bool?

    /// Sticker file to delete
    public let sticker: InputFile?


    public init(
        isAttached: Bool?,
        sticker: InputFile?
    ) {
        self.isAttached = isAttached
        self.sticker = sticker
    }
}

