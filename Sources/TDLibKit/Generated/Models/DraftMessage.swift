//
//  DraftMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.27-d7203eb7
//  https://github.com/tdlib/td/tree/d7203eb7
//

import Foundation


/// Contains information about a message draft
public struct DraftMessage: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the draft was created
    public let date: Int

    /// Content of the message draft; must be of the type inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote
    public let inputMessageText: InputMessageContent

    /// Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none
    public let replyTo: InputMessageReplyTo?


    public init(
        date: Int,
        inputMessageText: InputMessageContent,
        replyTo: InputMessageReplyTo?
    ) {
        self.date = date
        self.inputMessageText = inputMessageText
        self.replyTo = replyTo
    }
}

