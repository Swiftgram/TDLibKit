//
//  CloseChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed
public struct CloseChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

