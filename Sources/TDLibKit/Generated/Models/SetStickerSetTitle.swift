//
//  SetStickerSetTitle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-e4796b9b
//  https://github.com/tdlib/td/tree/e4796b9b
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

