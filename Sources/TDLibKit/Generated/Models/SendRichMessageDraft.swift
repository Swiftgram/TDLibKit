//
//  SendRichMessageDraft.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
//

import Foundation


/// Sends a draft for a being generated rich message; for bots only
public struct SendRichMessageDraft: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Unique identifier of the draft
    public let draftId: TdInt64?

    /// The forum topic identifier in which the message will be sent; pass 0 if none
    public let forumTopicId: Int?

    /// Draft of the message; file upload isn't supported
    public let message: InputRichMessage?


    public init(
        chatId: Int64?,
        draftId: TdInt64?,
        forumTopicId: Int?,
        message: InputRichMessage?
    ) {
        self.chatId = chatId
        self.draftId = draftId
        self.forumTopicId = forumTopicId
        self.message = message
    }
}

