//
//  MessageLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Contains information about a link to a message in a chat
public struct MessageLinkInfo: Codable {

    /// If found, identifier of the chat to which the message belongs, 0 otherwise
    public let chatId: Int64

    /// True, if the whole media album to which the message belongs is linked
    public let forAlbum: Bool

    /// True, if the message is linked as a channel post comment or from a message thread
    public let forComment: Bool

    /// True, if the link is a public link for a message in a chat
    public let isPublic: Bool

    /// If found, the linked message; may be null
    public let message: Message?


    public init(
        chatId: Int64,
        forAlbum: Bool,
        forComment: Bool,
        isPublic: Bool,
        message: Message?
    ) {
        self.chatId = chatId
        self.forAlbum = forAlbum
        self.forComment = forComment
        self.isPublic = isPublic
        self.message = message
    }
}

