//
//  SetStickerSetTitle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-470c36ce
//  https://github.com/tdlib/td/tree/470c36ce
//

import Foundation


/// Sets a sticker set title; for bots only
public struct SetStickerSetTitle: Codable, Equatable, Hashable {

    /// Sticker set name
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

