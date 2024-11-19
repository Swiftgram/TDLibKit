//
//  PaidReactor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Contains information about a user that added paid reactions
public struct PaidReactor: Codable, Equatable, Hashable {

    /// True, if the reactor is anonymous
    public let isAnonymous: Bool

    /// True, if the paid reaction was added by the current user
    public let isMe: Bool

    /// True, if the reactor is one of the most active reactors; may be false if the reactor is the current user
    public let isTop: Bool

    /// Identifier of the user or chat that added the reactions; may be null for anonymous reactors that aren't the current user
    public let senderId: MessageSender?

    /// Number of Telegram Stars added
    public let starCount: Int


    public init(
        isAnonymous: Bool,
        isMe: Bool,
        isTop: Bool,
        senderId: MessageSender?,
        starCount: Int
    ) {
        self.isAnonymous = isAnonymous
        self.isMe = isMe
        self.isTop = isTop
        self.senderId = senderId
        self.starCount = starCount
    }
}

