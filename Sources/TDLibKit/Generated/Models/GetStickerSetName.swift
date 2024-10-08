//
//  GetStickerSetName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-6dae0a56
//  https://github.com/tdlib/td/tree/6dae0a56
//

import Foundation


/// Returns name of a sticker set by its identifier
public struct GetStickerSetName: Codable, Equatable, Hashable {

    /// Identifier of the sticker set
    public let setId: TdInt64?


    public init(setId: TdInt64?) {
        self.setId = setId
    }
}

