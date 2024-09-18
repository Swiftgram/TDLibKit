//
//  ReorderInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-91aa6c9e
//  https://github.com/tdlib/td/tree/91aa6c9e
//

import Foundation


/// Changes the order of installed sticker sets
public struct ReorderInstalledStickerSets: Codable, Equatable, Hashable {

    /// Identifiers of installed sticker sets in the new correct order
    public let stickerSetIds: [TdInt64]?

    /// Type of the sticker sets to reorder
    public let stickerType: StickerType?


    public init(
        stickerSetIds: [TdInt64]?,
        stickerType: StickerType?
    ) {
        self.stickerSetIds = stickerSetIds
        self.stickerType = stickerType
    }
}

