//
//  EphemeralMessageContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Describes ephemeral content of a regular message, which must be shown instead of the regular content
public struct EphemeralMessageContent: Codable, Equatable, Hashable {

    /// True, if the content of the message can be saved locally
    public let canBeSaved: Bool

    /// Content of the message
    public let content: MessageContent

    /// True, if media timestamp entities refer to media in this message as opposed to media in the replied-to message
    public let hasTimestampedMedia: Bool

    /// Reply markup for the message; may be null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        canBeSaved: Bool,
        content: MessageContent,
        hasTimestampedMedia: Bool,
        replyMarkup: ReplyMarkup?
    ) {
        self.canBeSaved = canBeSaved
        self.content = content
        self.hasTimestampedMedia = hasTimestampedMedia
        self.replyMarkup = replyMarkup
    }
}

