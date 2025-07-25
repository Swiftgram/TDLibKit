//
//  GetMessageLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns an HTTPS link to a message in a chat. Available only if messageProperties.can_get_link, or if messageProperties.can_get_media_timestamp_links and a media timestamp link is generated. This is an offline method
public struct GetMessageLink: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true to create a link for the whole media album
    public let forAlbum: Bool?

    /// Pass true to create a link to the message as a channel post comment, in a message thread, or a forum topic
    public let inMessageThread: Bool?

    /// If not 0, timestamp from which the video/audio/video note/voice note/story playing must start, in seconds. The media can be in the message content or in its link preview
    public let mediaTimestamp: Int?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        forAlbum: Bool?,
        inMessageThread: Bool?,
        mediaTimestamp: Int?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.forAlbum = forAlbum
        self.inMessageThread = inMessageThread
        self.mediaTimestamp = mediaTimestamp
        self.messageId = messageId
    }
}

