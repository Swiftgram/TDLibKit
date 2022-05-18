//
//  DraftMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e65c0827
//  https://github.com/tdlib/td/tree/e65c0827
//

import Foundation


/// Contains information about a message draft
public struct DraftMessage: Codable, Equatable {

    /// Point in time (Unix timestamp) when the draft was created
    public let date: Int

    /// Content of the message draft; must be of the type inputMessageText
    public let inputMessageText: InputMessageContent

    /// Identifier of the replied message; 0 if none
    public let replyToMessageId: Int64


    public init(
        date: Int,
        inputMessageText: InputMessageContent,
        replyToMessageId: Int64
    ) {
        self.date = date
        self.inputMessageText = inputMessageText
        self.replyToMessageId = replyToMessageId
    }
}

