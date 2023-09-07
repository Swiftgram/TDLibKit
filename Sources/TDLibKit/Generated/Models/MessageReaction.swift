//
//  MessageReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-edc52845
//  https://github.com/tdlib/td/tree/edc52845
//

import Foundation


/// Contains information about a reaction to a message
public struct MessageReaction: Codable, Equatable, Hashable {

    /// True, if the reaction is chosen by the current user
    public let isChosen: Bool

    /// Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats
    public let recentSenderIds: [MessageSender]

    /// Number of times the reaction was added
    public let totalCount: Int

    /// Type of the reaction
    public let type: ReactionType


    public init(
        isChosen: Bool,
        recentSenderIds: [MessageSender],
        totalCount: Int,
        type: ReactionType
    ) {
        self.isChosen = isChosen
        self.recentSenderIds = recentSenderIds
        self.totalCount = totalCount
        self.type = type
    }
}

