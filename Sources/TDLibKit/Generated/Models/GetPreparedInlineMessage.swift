//
//  GetPreparedInlineMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Saves an inline message to be sent by the given user
public struct GetPreparedInlineMessage: Codable, Equatable, Hashable {

    /// Identifier of the bot that created the message
    public let botUserId: Int64?

    /// Identifier of the prepared message
    public let preparedMessageId: String?


    public init(
        botUserId: Int64?,
        preparedMessageId: String?
    ) {
        self.botUserId = botUserId
        self.preparedMessageId = preparedMessageId
    }
}

