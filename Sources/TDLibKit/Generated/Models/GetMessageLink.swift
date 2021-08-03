//
//  GetMessageLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns an HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels. This is an offline request
public struct GetMessageLink: Codable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64

    /// Pass true to create a link for the whole media album
    public let forAlbum: Bool

    /// Pass true to create a link to the message as a channel post comment, or from a message thread
    public let forComment: Bool

    /// If not 0, timestamp from which the video/audio/video note/voice note playing should start, in seconds. The media can be in the message content or in its link preview
    public let mediaTimestamp: Int

    /// Identifier of the message
    public let messageId: Int64


    public init(
        chatId: Int64,
        forAlbum: Bool,
        forComment: Bool,
        mediaTimestamp: Int,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.forAlbum = forAlbum
        self.forComment = forComment
        self.mediaTimestamp = mediaTimestamp
        self.messageId = messageId
    }
}

