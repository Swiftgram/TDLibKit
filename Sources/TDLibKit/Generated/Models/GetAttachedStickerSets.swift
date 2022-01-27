//
//  GetAttachedStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// Returns a list of sticker sets attached to a file. Currently, only photos and videos can have attached sticker sets
public struct GetAttachedStickerSets: Codable, Equatable {

    /// File identifier
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}

