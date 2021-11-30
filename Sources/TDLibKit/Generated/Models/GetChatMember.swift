//
//  GetChatMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-e79ec946
//  https://github.com/tdlib/td/tree/e79ec946
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

