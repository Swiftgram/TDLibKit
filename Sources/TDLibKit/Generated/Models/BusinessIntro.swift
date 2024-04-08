//
//  BusinessIntro.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.27-d7203eb7
//  https://github.com/tdlib/td/tree/d7203eb7
//

import Foundation


/// Describes settings for a business account intro
public struct BusinessIntro: Codable, Equatable, Hashable {

    /// Message text of the intro
    public let message: String

    /// Greeting sticker of the intro; may be null if none
    public let sticker: Sticker?

    /// Title text of the intro
    public let title: String


    public init(
        message: String,
        sticker: Sticker?,
        title: String
    ) {
        self.message = message
        self.sticker = sticker
        self.title = title
    }
}

