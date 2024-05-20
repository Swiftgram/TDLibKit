//
//  SetChatMemberStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes the status of a chat member; requires can_invite_users member right to add a chat member, can_promote_members administrator right to change administrator rights of the member, and can_restrict_members administrator right to change restrictions of a user. This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead. Use addChatMember or banChatMember if some additional parameters needs to be passed
public struct SetChatMemberStatus: Codable, Equatable, Hashable {

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

