//
//  GetChatPinnedMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns information about a newest pinned message in the chat
public struct GetChatPinnedMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

