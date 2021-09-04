//
//  SetSupergroupStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Changes the sticker set of a supergroup; requires can_change_info administrator right
public struct SetSupergroupStickerSet: Codable {

    /// New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
    public let stickerSetId: TdInt64

    /// Identifier of the supergroup
    public let supergroupId: Int


    public init(
        stickerSetId: TdInt64,
        supergroupId: Int
    ) {
        self.stickerSetId = stickerSetId
        self.supergroupId = supergroupId
    }
}
