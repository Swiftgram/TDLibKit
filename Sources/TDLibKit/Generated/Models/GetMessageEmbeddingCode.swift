//
//  GetMessageEmbeddingCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username
public struct GetMessageEmbeddingCode: Codable, Equatable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true to return an HTML code for embedding of the whole media album
    public let forAlbum: Bool?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        forAlbum: Bool?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.forAlbum = forAlbum
        self.messageId = messageId
    }
}

