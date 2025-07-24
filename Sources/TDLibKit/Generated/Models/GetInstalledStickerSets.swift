//
//  GetInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

