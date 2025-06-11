//
//  SetDirectMessagesChatTopicDraftMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Changes the draft message in the topic in a channel direct messages chat administered by the current user
public struct SetDirectMessagesChatTopicDraftMessage: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New draft message; pass null to remove the draft. All files in draft message content must be of the type inputFileLocal. Media thumbnails and captions are ignored
    public let draftMessage: DraftMessage?

    /// Topic identifier
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        draftMessage: DraftMessage?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.draftMessage = draftMessage
        self.topicId = topicId
    }
}

