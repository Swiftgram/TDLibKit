//
//  DraftMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Contains information about a message draft
public struct DraftMessage: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the draft was created
    public let date: Int

    /// Identifier of the effect to apply to the message when it is sent; 0 if none
    public let effectId: TdInt64

    /// Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote
    public let inputMessageText: InputMessageContent

    /// Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none
    public let replyTo: InputMessageReplyTo?


    public init(
        date: Int,
        effectId: TdInt64,
        inputMessageText: InputMessageContent,
        replyTo: InputMessageReplyTo?
    ) {
        self.date = date
        self.effectId = effectId
        self.inputMessageText = inputMessageText
        self.replyTo = replyTo
    }
}

