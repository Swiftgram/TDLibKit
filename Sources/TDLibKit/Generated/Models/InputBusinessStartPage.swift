//
//  InputBusinessStartPage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes settings for a business account start page to set
public struct InputBusinessStartPage: Codable, Equatable, Hashable {

    /// Message text of the start page; 0-getOption("business_start_page_message_length_max") characters
    public let message: String

    /// Greeting sticker of the start page; pass null if none. The sticker must belong to a sticker set and must not be a custom emoji
    public let sticker: InputFile?

    /// Title text of the start page; 0-getOption("business_start_page_title_length_max") characters
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

