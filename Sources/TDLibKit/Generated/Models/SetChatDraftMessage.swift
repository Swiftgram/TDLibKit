//
//  SetChatDraftMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-58c4a12c
//  https://github.com/tdlib/td/tree/58c4a12c
//

import Foundation


/// Changes the draft message in a chat
public struct SetChatDraftMessage: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// New draft message; pass null to remove the draft
    public let draftMessage: DraftMessage?

    /// If not 0, a message thread identifier in which the draft was changed
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        draftMessage: DraftMessage?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.draftMessage = draftMessage
        self.messageThreadId = messageThreadId
    }
}

