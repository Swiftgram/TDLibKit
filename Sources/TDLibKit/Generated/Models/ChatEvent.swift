//
//  ChatEvent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Represents a chat event
public struct ChatEvent: Codable, Equatable, Hashable, Identifiable {

    /// The action
    public let action: ChatEventAction

    /// Point in time (Unix timestamp) when the event happened
    public let date: Int

    /// Chat event identifier
    public let id: TdInt64

    /// Identifier of the user or chat who performed the action
    public let memberId: MessageSender


    public init(
        action: ChatEventAction,
        date: Int,
        id: TdInt64,
        memberId: MessageSender
    ) {
        self.action = action
        self.date = date
        self.id = id
        self.memberId = memberId
    }
}

