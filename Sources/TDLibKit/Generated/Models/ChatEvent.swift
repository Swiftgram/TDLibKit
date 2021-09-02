//
//  ChatEvent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Represents a chat event
public struct ChatEvent: Codable {

    /// Action performed by the user
    public let action: ChatEventAction

    /// Point in time (Unix timestamp) when the event happened
    public let date: Int

    /// Chat event identifier
    public let id: TdInt64

    /// Identifier of the user who performed the action that triggered the event
    public let userId: Int


    public init(
        action: ChatEventAction,
        date: Int,
        id: TdInt64,
        userId: Int
    ) {
        self.action = action
        self.date = date
        self.id = id
        self.userId = userId
    }
}

