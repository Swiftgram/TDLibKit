//
//  GetInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-b41a51f2
//  https://github.com/tdlib/td/tree/b41a51f2
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

