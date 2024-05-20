//
//  SetChatDraftMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes the draft message in a chat
public struct SetChatDraftMessage: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored
    public let draftMessage: DraftMessage?

    /// If not 0, the message thread identifier in which the draft was changed
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

