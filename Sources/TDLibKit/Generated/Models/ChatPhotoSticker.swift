//
//  ChatPhotoSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Information about the sticker, which was used to create the chat photo. The sticker is shown at the center of the photo and occupies at most 67% of it
public struct ChatPhotoSticker: Codable, Equatable, Hashable {

    /// The fill to be used as background for the sticker; rotation angle in backgroundFillGradient isn't supported
    public let backgroundFill: BackgroundFill

    /// Type of the sticker
    public let type: ChatPhotoStickerType


    public init(
        backgroundFill: BackgroundFill,
        type: ChatPhotoStickerType
    ) {
        self.backgroundFill = backgroundFill
        self.type = type
    }
}

