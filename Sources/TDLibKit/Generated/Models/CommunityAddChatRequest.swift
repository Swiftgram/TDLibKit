//
//  CommunityAddChatRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
//

import Foundation


/// Describes a request to add a chat to a community
public struct CommunityAddChatRequest: Codable, Equatable, Hashable {

    /// Identifier of the chat to be added
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the request was sent
    public let date: Int

    /// True, if the chat will be visible only to administrators of the community
    public let isHidden: Bool

    /// Identifier of the user who sent the request
    public let senderUserId: Int64


    public init(
        chatId: Int64,
        date: Int,
        isHidden: Bool,
        senderUserId: Int64
    ) {
        self.chatId = chatId
        self.date = date
        self.isHidden = isHidden
        self.senderUserId = senderUserId
    }
}

