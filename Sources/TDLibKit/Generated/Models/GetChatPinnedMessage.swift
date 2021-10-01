//
//  GetChatPinnedMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Returns information about a newest pinned message in the chat
public struct GetChatPinnedMessage: Codable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

