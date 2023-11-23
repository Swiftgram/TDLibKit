//
//  AddChatMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Adds multiple new members to a chat. Currently, this method is only available for supergroups and channels. This method can't be used to join a chat. Members can't be added to a channel if it has more than 200 members
public struct AddChatMembers: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifiers of the users to be added to the chat. The maximum number of added users is 20 for supergroups and 100 for channels
    public let userIds: [Int64]?


    public init(
        chatId: Int64?,
        userIds: [Int64]?
    ) {
        self.chatId = chatId
        self.userIds = userIds
    }
}

