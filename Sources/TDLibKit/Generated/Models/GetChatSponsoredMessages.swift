//
//  GetChatSponsoredMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
//

import Foundation


/// Returns sponsored messages to be shown in a chat; for channel chats and chats with bots only
public struct GetChatSponsoredMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

