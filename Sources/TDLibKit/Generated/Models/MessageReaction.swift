//
//  MessageReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.2-461b7409
//  https://github.com/tdlib/td/tree/461b7409
//

import Foundation


/// Contains information about a reaction to a message
public struct MessageReaction: Codable, Equatable {

    /// True, if the reaction is chosen by the current user
    public let isChosen: Bool

    /// Text representation of the reaction
    public let reaction: String

    /// Identifiers of at most 3 recent message senders, added the reaction; available in private chats, basic groups and supergroups
    public let recentSenderIds: [MessageSender]

    /// Number of times the reaction was added
    public let totalCount: Int


    public init(
        isChosen: Bool,
        reaction: String,
        recentSenderIds: [MessageSender],
        totalCount: Int
    ) {
        self.isChosen = isChosen
        self.reaction = reaction
        self.recentSenderIds = recentSenderIds
        self.totalCount = totalCount
    }
}
