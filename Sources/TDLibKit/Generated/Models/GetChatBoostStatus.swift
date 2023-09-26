//
//  GetChatBoostStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-9b4266c0
//  https://github.com/tdlib/td/tree/9b4266c0
//

import Foundation


/// Returns the current boost status for a channel chat
public struct GetChatBoostStatus: Codable, Equatable, Hashable {

    /// Identifier of the channel chat
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

