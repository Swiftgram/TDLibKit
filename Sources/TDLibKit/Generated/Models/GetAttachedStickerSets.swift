//
//  GetAttachedStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Returns a list of sticker sets attached to a file. Currently only photos and videos can have attached sticker sets
public struct GetAttachedStickerSets: Codable {

    /// File identifier
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}

