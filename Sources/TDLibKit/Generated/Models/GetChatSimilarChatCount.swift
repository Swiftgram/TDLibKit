//
//  GetChatSimilarChatCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Returns approximate number of chats similar to the given chat
public struct GetChatSimilarChatCount: Codable, Equatable, Hashable {

    /// Identifier of the target chat; must be an identifier of a channel chat
    public let chatId: Int64?

    /// Pass true to get the number of chats without sending network requests, or -1 if the number of chats is unknown locally
    public let returnLocal: Bool?


    public init(
        chatId: Int64?,
        returnLocal: Bool?
    ) {
        self.chatId = chatId
        self.returnLocal = returnLocal
    }
}

