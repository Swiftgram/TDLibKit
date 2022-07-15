//
//  GetInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Returns a list of installed sticker sets
public struct GetInstalledStickerSets: Codable, Equatable {

    /// Pass true to return mask sticker sets; pass false to return ordinary sticker sets
    public let isMasks: Bool?


    public init(isMasks: Bool?) {
        self.isMasks = isMasks
    }
}

