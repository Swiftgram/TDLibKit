//
//  SetChatMemberStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead. Use addChatMember or banChatMember if you need to pass some additional parameters
public struct SetChatMemberStatus: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Member identifier. Chats can be only banned and unbanned in supergroups and channels
    public let memberId: MessageSender?

    /// The new status of the member in the chat
    public let status: ChatMemberStatus?


    public init(
        chatId: Int64?,
        memberId: MessageSender?,
        status: ChatMemberStatus?
    ) {
        self.chatId = chatId
        self.memberId = memberId
        self.status = status
    }
}

