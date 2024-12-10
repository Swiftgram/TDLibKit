//
//  MessageReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Contains a list of reactions added to a message
public struct MessageReactions: Codable, Equatable, Hashable {

    /// True, if the reactions are tags and Telegram Premium users can filter messages by them
    public let areTags: Bool

    /// True, if the list of added reactions is available using getMessageAddedReactions
    public let canGetAddedReactions: Bool

    /// Information about top users that added the paid reaction
    public let paidReactors: [PaidReactor]

    /// List of added reactions
    public let reactions: [MessageReaction]


    public init(
        areTags: Bool,
        canGetAddedReactions: Bool,
        paidReactors: [PaidReactor],
        reactions: [MessageReaction]
    ) {
        self.areTags = areTags
        self.canGetAddedReactions = canGetAddedReactions
        self.paidReactors = paidReactors
        self.reactions = reactions
    }
}

