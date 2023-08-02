//
//  GetChatSponsoredMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-ff687167
//  https://github.com/tdlib/td/tree/ff687167
//

import Foundation


/// Returns sponsored messages to be shown in a chat; for channel chats only
public struct GetChatSponsoredMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

