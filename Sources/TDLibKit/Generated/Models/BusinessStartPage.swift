//
//  BusinessStartPage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes settings for a business account start page
public struct BusinessStartPage: Codable, Equatable, Hashable {

    /// Message text of the start page
    public let message: String

    /// Greeting sticker of the start page; may be null if none
    public let sticker: Sticker?

    /// Title text of the start page
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

