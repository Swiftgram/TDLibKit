//
//  ChatEvent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-a53cb30e
//  https://github.com/tdlib/td/tree/a53cb30e
//

import Foundation


/// Represents a chat event
public struct ChatEvent: Codable, Equatable {

    /// Action performed by the user
    public let action: ChatEventAction

    /// Point in time (Unix timestamp) when the event happened
    public let date: Int

    /// Chat event identifier
    public let id: TdInt64

    /// Identifier of the user who performed the action that triggered the event
    public let userId: Int64


    public init(
        action: ChatEventAction,
        date: Int,
        id: TdInt64,
        userId: Int64
    ) {
        self.action = action
        self.date = date
        self.id = id
        self.userId = userId
    }
}

