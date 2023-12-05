//
//  GetRecentStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
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

