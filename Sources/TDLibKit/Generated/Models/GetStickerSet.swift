//
//  GetStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-a7f8ff6e
//  https://github.com/tdlib/td/tree/a7f8ff6e
//

import Foundation


/// Returns information about a sticker set by its identifier
public struct GetStickerSet: Codable, Equatable, Hashable {

    /// Identifier of the sticker set
    public let setId: TdInt64?


    public init(setId: TdInt64?) {
        self.setId = setId
    }
}

