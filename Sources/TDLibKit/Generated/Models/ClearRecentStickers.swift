//
//  ClearRecentStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-b41f3219
//  https://github.com/tdlib/td/tree/b41f3219
//

import Foundation


/// Clears the list of recently used stickers
public struct ClearRecentStickers: Codable, Equatable, Hashable {

    /// Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers
    public let isAttached: Bool?


    public init(isAttached: Bool?) {
        self.isAttached = isAttached
    }
}

