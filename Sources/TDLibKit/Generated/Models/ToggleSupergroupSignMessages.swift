//
//  ToggleSupergroupSignMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Toggles whether the sender signature or a link to the account is added to sent messages in a channel; requires can_change_info member right
public struct ToggleSupergroupSignMessages: Codable, Equatable, Hashable {

    /// New value of show_message_sender
    public let showMessageSender: Bool?

    /// New value of sign_messages
    public let signMessages: Bool?

    /// Identifier of the channel
    public let supergroupId: Int64?


    public init(
        showMessageSender: Bool?,
        signMessages: Bool?,
        supergroupId: Int64?
    ) {
        self.showMessageSender = showMessageSender
        self.signMessages = signMessages
        self.supergroupId = supergroupId
    }
}

