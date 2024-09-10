//
//  GetRecentStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-dcfd86c7
//  https://github.com/tdlib/td/tree/dcfd86c7
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

