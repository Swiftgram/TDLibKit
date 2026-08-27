//
//  EphemeralMessageContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Describes an ephemeral content of a regular message, which must be shown instead of the regular content
public struct EphemeralMessageContent: Codable, Equatable, Hashable {

    /// True, if content of the message can be saved locally
    public let canBeSaved: Bool

    /// Content of the message
    public let content: MessageContent

    /// True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
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

