//
//  GetSuggestedStickerSetName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Returns a suggested name for a new sticker set with a given title
public struct GetSuggestedStickerSetName: Codable, Equatable, Hashable {

    /// Sticker set title; 1-64 characters
    public let title: String?


    public init(title: String?) {
        self.title = title
    }
}

