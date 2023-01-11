//
//  GetInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-64406035
//  https://github.com/tdlib/td/tree/64406035
//

import Foundation


/// Returns a list of installed sticker sets
public struct GetInstalledStickerSets: Codable, Equatable {

    /// Type of the sticker sets to return
    public let stickerType: StickerType?


    public init(stickerType: StickerType?) {
        self.stickerType = stickerType
    }
}

