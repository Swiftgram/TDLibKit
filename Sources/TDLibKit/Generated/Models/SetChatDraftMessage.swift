//
//  SetChatDraftMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-9b4266c0
//  https://github.com/tdlib/td/tree/9b4266c0
//

import Foundation


/// Changes the draft message in a chat
public struct SetChatDraftMessage: Codable, Equatable, Hashable {

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

