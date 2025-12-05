//
//  SendTextMessageDraft.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Sends a draft for a being generated text message; for bots only
public struct SendTextMessageDraft: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Unique identifier of the draft
    public let draftId: TdInt64?

    /// The forum topic identifier in which the message will be sent; pass 0 if none
    public let forumTopicId: Int?

    /// Draft text of the message
    public let text: FormattedText?


    public init(
        chatId: Int64?,
        draftId: TdInt64?,
        forumTopicId: Int?,
        text: FormattedText?
    ) {
        self.chatId = chatId
        self.draftId = draftId
        self.forumTopicId = forumTopicId
        self.text = text
    }
}

