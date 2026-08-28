//
//  SendRichMessageDraft.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Sends a draft for a being generated rich message; for bots only
public struct SendRichMessageDraft: Codable, Equatable, Hashable {

    /// Pass true to show the user a button to stop further drafts
    public let canStop: Bool?

    /// Chat identifier
    public let chatId: Int64?

    /// Unique identifier of the draft
    public let draftId: TdInt64?

    /// The forum topic identifier in which the message will be sent; pass 0 if none
    public let forumTopicId: Int?

    /// Pass true to keep the current draft when the user stops further generation
    public let keepOnStop: Bool?

    /// Draft of the message; file upload isn't supported
    public let message: InputRichMessage?


    public init(
        canStop: Bool?,
        chatId: Int64?,
        draftId: TdInt64?,
        forumTopicId: Int?,
        keepOnStop: Bool?,
        message: InputRichMessage?
    ) {
        self.canStop = canStop
        self.chatId = chatId
        self.draftId = draftId
        self.forumTopicId = forumTopicId
        self.keepOnStop = keepOnStop
        self.message = message
    }
}

