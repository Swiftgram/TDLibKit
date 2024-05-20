//
//  MessageLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a link to a message or a forum topic in a chat
public struct MessageLinkInfo: Codable, Equatable, Hashable {

    /// If found, identifier of the chat to which the link points, 0 otherwise
    public let chatId: Int64

    /// True, if the whole media album to which the message belongs is linked
    public let forAlbum: Bool

    /// True, if the link is a public link for a message or a forum topic in a chat
    public let isPublic: Bool

    /// Timestamp from which the video/audio/video note/voice note/story playing must start, in seconds; 0 if not specified. The media can be in the message content or in its web page preview
    public let mediaTimestamp: Int

    /// If found, the linked message; may be null
    public let message: Message?

    /// If found, identifier of the message thread in which to open the message, or a forum topic to open if the message is missing
    public let messageThreadId: Int64


    public init(
        chatId: Int64,
        forAlbum: Bool,
        isPublic: Bool,
        mediaTimestamp: Int,
        message: Message?,
        messageThreadId: Int64
    ) {
        self.chatId = chatId
        self.forAlbum = forAlbum
        self.isPublic = isPublic
        self.mediaTimestamp = mediaTimestamp
        self.message = message
        self.messageThreadId = messageThreadId
    }
}

