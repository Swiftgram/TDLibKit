//
//  ViewTrendingStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Informs the server that some trending sticker sets have been viewed by the user
public struct ViewTrendingStickerSets: Codable {

    /// Identifiers of viewed trending sticker sets
    public let stickerSetIds: [TdInt64]


    public init(stickerSetIds: [TdInt64]) {
        self.stickerSetIds = stickerSetIds
    }
}

