//
//  ToggleSupergroupJoinToSendMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-58c4a12c
//  https://github.com/tdlib/td/tree/58c4a12c
//

import Foundation


/// Toggles whether joining is mandatory to send messages to a discussion supergroup; requires can_restrict_members administrator right
public struct ToggleSupergroupJoinToSendMessages: Codable, Equatable {

    /// New value of join_to_send_messages
    public let joinToSendMessages: Bool?

    /// Identifier of the supergroup
    public let supergroupId: Int64?


    public init(
        joinToSendMessages: Bool?,
        supergroupId: Int64?
    ) {
        self.joinToSendMessages = joinToSendMessages
        self.supergroupId = supergroupId
    }
}

