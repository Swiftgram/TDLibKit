//
//  SetStickerSetTitle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Sets a sticker set title
public struct SetStickerSetTitle: Codable, Equatable, Hashable {

    /// Sticker set name. The sticker set must be owned by the current user
    public let name: String?

    /// New sticker set title
    public let title: String?


    public init(
        name: String?,
        title: String?
    ) {
        self.name = name
        self.title = title
    }
}

