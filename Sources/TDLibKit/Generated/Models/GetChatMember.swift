//
//  GetChatMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
//

import Foundation


/// Returns information about a single member of a chat
public struct GetChatMember: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// Member identifier
    public let memberId: MessageSender?


    public init(
        chatId: Int64?,
        memberId: MessageSender?
    ) {
        self.chatId = chatId
        self.memberId = memberId
    }
}

