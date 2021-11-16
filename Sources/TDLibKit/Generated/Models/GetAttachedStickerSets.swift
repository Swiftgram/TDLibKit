//
//  GetAttachedStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
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

