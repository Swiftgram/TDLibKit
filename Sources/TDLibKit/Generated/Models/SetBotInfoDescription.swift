//
//  SetBotInfoDescription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Sets the text shown in the chat with the bot if the chat is empty; bots only
public struct SetBotInfoDescription: Codable, Equatable {

    public let description: String?

    /// A two-letter ISO 639-1 language code. If empty, the description will be shown to all users, for which language there are no dedicated description
    public let languageCode: String?


    public init(
        description: String?,
        languageCode: String?
    ) {
        self.description = description
        self.languageCode = languageCode
    }
}

