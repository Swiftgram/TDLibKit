//
//  GetChatPinnedMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
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

