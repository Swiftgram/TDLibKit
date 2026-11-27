//
//  GetMessageEmbeddingCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Returns HTML code for embedding the message. Available only if messageProperties.can_get_embedding_code
public struct GetMessageEmbeddingCode: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true to return HTML code for embedding the whole media album
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

