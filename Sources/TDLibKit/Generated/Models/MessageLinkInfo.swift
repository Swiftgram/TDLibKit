//
//  MessageLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
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

    /// Timestamp from which the video/audio/video note/voice note/story playing must start, in seconds; 0 if not specified. The media can be in the message content or in its link preview
    public let mediaTimestamp: Int

    /// If found, the linked message; may be null
    public let message: Message?

    /// Identifier of the specific topic in which the message must be opened, or a topic to open if the message is missing; may be null if none
    public let topicId: MessageTopic?


    public init(
        chatId: Int64,
        forAlbum: Bool,
        isPublic: Bool,
        mediaTimestamp: Int,
        message: Message?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.forAlbum = forAlbum
        self.isPublic = isPublic
        self.mediaTimestamp = mediaTimestamp
        self.message = message
        self.topicId = topicId
    }
}

