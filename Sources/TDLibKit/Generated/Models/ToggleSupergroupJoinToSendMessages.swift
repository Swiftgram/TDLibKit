//
//  ToggleSupergroupJoinToSendMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Toggles whether joining is mandatory to send messages to a discussion supergroup; requires can_restrict_members administrator right
public struct ToggleSupergroupJoinToSendMessages: Codable, Equatable, Hashable {

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

