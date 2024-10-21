//
//  GetRecentStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Returns a list of recently used stickers
public struct GetRecentStickers: Codable, Equatable, Hashable {

    /// Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
    public let isAttached: Bool?


    public init(isAttached: Bool?) {
        self.isAttached = isAttached
    }
}

