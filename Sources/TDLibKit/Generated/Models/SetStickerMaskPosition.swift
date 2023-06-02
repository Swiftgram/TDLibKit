//
//  SetStickerMaskPosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-04525f6f
//  https://github.com/tdlib/td/tree/04525f6f
//

import Foundation


/// Changes the mask position of a mask sticker; for bots only. The sticker must belong to a mask sticker set created by the bot
public struct SetStickerMaskPosition: Codable, Equatable {

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

