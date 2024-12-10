//
//  SetStickerMaskPosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Changes the mask position of a mask sticker. The sticker must belong to a mask sticker set that is owned by the current user
public struct SetStickerMaskPosition: Codable, Equatable, Hashable {

    /// Position where the mask is placed; pass null to remove mask position
    public let maskPosition: MaskPosition?

    /// Sticker
    public let sticker: InputFile?


    public init(
        maskPosition: MaskPosition?,
        sticker: InputFile?
    ) {
        self.maskPosition = maskPosition
        self.sticker = sticker
    }
}

