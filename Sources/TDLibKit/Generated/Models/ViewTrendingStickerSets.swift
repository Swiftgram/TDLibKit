//
//  ViewTrendingStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
//

import Foundation


/// Informs the server that some trending sticker sets have been viewed by the user
public struct ViewTrendingStickerSets: Codable, Equatable, Hashable {

    /// Identifiers of viewed trending sticker sets
    public let stickerSetIds: [TdInt64]?


    public init(stickerSetIds: [TdInt64]?) {
        self.stickerSetIds = stickerSetIds
    }
}

