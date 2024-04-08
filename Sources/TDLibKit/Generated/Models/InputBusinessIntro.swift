//
//  InputBusinessIntro.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.27-d7203eb7
//  https://github.com/tdlib/td/tree/d7203eb7
//

import Foundation


/// Describes settings for a business account intro to set
public struct InputBusinessIntro: Codable, Equatable, Hashable {

    /// Message text of the intro; 0-getOption("business_intro_message_length_max") characters
    public let message: String

    /// Greeting sticker of the intro; pass null if none. The sticker must belong to a sticker set and must not be a custom emoji
    public let sticker: InputFile?

    /// Title text of the intro; 0-getOption("business_intro_title_length_max") characters
    public let title: String


    public init(
        message: String,
        sticker: InputFile?,
        title: String
    ) {
        self.message = message
        self.sticker = sticker
        self.title = title
    }
}

