//
//  SetStickerSetTitle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
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

