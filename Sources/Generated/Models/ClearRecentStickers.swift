//
//  ClearRecentStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Clears the list of recently used stickers
public struct ClearRecentStickers: Codable {

    /// Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers
    public let isAttached: Bool


    public init(isAttached: Bool) {
        self.isAttached = isAttached
    }
}

