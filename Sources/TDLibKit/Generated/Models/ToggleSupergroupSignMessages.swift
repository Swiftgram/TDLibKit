//
//  ToggleSupergroupSignMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Toggles whether sender signature or link to the account is added to sent messages in a channel; requires can_change_info member right
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

