//
//  SetBotInfoDescription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets the text shown in the chat with a bot if the chat is empty. Can be called only if userTypeBot.can_be_edited == true
public struct SetBotInfoDescription: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    public let description: String?

    /// A two-letter ISO 639-1 language code. If empty, the description will be shown to all users for whose languages there is no dedicated description
    public let languageCode: String?


    public init(
        botUserId: Int64?,
        description: String?,
        languageCode: String?
    ) {
        self.botUserId = botUserId
        self.description = description
        self.languageCode = languageCode
    }
}

