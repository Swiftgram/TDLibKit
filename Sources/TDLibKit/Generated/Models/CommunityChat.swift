//
//  CommunityChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Describes a chat in a community
public struct CommunityChat: Codable, Equatable, Hashable {

    /// True, if message history of the chat can be viewed
    public let canViewHistory: Bool

    /// Identifier of the chat in the community
    public let chatId: Int64

    /// True, if the chat is hidden in the list of community chats; for community administrators only
    public let isHidden: Bool


    public init(
        canViewHistory: Bool,
        chatId: Int64,
        isHidden: Bool
    ) {
        self.canViewHistory = canViewHistory
        self.chatId = chatId
        self.isHidden = isHidden
    }
}

