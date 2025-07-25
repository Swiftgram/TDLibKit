//
//  SavePreparedInlineMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Saves an inline message to be sent by the given user; for bots only
public struct SavePreparedInlineMessage: Codable, Equatable, Hashable {

    /// Types of the chats to which the message can be sent
    public let chatTypes: TargetChatTypes?

    /// The description of the message
    public let result: InputInlineQueryResult?

    /// Identifier of the user
    public let userId: Int64?


    public init(
        chatTypes: TargetChatTypes?,
        result: InputInlineQueryResult?,
        userId: Int64?
    ) {
        self.chatTypes = chatTypes
        self.result = result
        self.userId = userId
    }
}

