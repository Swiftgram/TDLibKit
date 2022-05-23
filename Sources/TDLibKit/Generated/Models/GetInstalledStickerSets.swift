//
//  GetInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
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

