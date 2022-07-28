//
//  MessageLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about a link to a message in a chat
public struct MessageLinkInfo: Codable, Equatable {

    /// If found, identifier of the chat to which the message belongs, 0 otherwise
    public let chatId: Int64

    /// True, if the whole media album to which the message belongs is linked
    public let forAlbum: Bool

    /// True, if the message is linked as a channel post comment or from a message thread
    public let forComment: Bool

    /// True, if the link is a public link for a message in a chat
    public let isPublic: Bool

    /// Timestamp from which the video/audio/video note/voice note playing must start, in seconds; 0 if not specified. The media can be in the message content or in its web page preview
    public let mediaTimestamp: Int

    /// If found, the linked message; may be null
    public let message: Message?


    public init(
        chatId: Int64,
        forAlbum: Bool,
        forComment: Bool,
        isPublic: Bool,
        mediaTimestamp: Int,
        message: Message?
    ) {
        self.chatId = chatId
        self.forAlbum = forAlbum
        self.forComment = forComment
        self.isPublic = isPublic
        self.mediaTimestamp = mediaTimestamp
        self.message = message
    }
}

