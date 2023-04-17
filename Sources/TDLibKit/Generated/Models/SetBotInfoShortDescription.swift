//
//  SetBotInfoShortDescription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Sets the text shown on the bot's profile page and sent together with the link when users share the bot; bots only
public struct SetBotInfoShortDescription: Codable, Equatable {

    /// A two-letter ISO 639-1 language code. If empty, the short description will be shown to all users, for which language there are no dedicated description
    public let languageCode: String?

    /// New bot's short description on the specified language
    public let shortDescription: String?


    public init(
        languageCode: String?,
        shortDescription: String?
    ) {
        self.languageCode = languageCode
        self.shortDescription = shortDescription
    }
}

