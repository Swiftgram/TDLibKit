//
//  GetChatPinnedMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Returns information about a newest pinned message in the chat. Returns a 404 error if the message doesn't exist
public struct GetChatPinnedMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

