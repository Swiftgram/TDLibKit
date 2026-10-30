//
//  GetInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Returns a list of installed sticker sets
public struct GetInstalledStickerSets: Codable, Equatable, Hashable {

    /// Type of the sticker sets to return
    public let stickerType: StickerType?


    public init(stickerType: StickerType?) {
        self.stickerType = stickerType
    }
}

