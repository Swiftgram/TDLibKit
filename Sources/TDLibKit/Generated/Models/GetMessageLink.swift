//
//  GetMessageLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns an HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels, or if message.can_get_media_timestamp_links and a media timestamp link is generated. This is an offline request
public struct GetMessageLink: Codable, Equatable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true to create a link for the whole media album
    public let forAlbum: Bool?

    /// Pass true to create a link to the message as a channel post comment, or from a message thread
    public let forComment: Bool?

    /// If not 0, timestamp from which the video/audio/video note/voice note playing must start, in seconds. The media can be in the message content or in its web page preview
    public let mediaTimestamp: Int?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        forAlbum: Bool?,
        forComment: Bool?,
        mediaTimestamp: Int?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.forAlbum = forAlbum
        self.forComment = forComment
        self.mediaTimestamp = mediaTimestamp
        self.messageId = messageId
    }
}

