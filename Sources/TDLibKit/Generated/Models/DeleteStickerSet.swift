//
//  DeleteStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Completely deletes a sticker set
public struct DeleteStickerSet: Codable, Equatable, Hashable {

    /// Sticker set name. The sticker set must be owned by the current user
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

