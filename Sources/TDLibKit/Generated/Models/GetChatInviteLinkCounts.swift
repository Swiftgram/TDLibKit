//
//  GetChatInviteLinkCounts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-ea97bcdd
//  https://github.com/tdlib/td/tree/ea97bcdd
//

import Foundation


/// Returns the list of chat administrators with number of their invite links. Requires owner privileges in the chat
public struct GetChatInviteLinkCounts: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

