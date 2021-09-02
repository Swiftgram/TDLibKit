//
//  ToggleSupergroupSignMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Toggles sender signatures messages sent in a channel; requires can_change_info administrator right
public struct ToggleSupergroupSignMessages: Codable {

    /// New value of sign_messages
    public let signMessages: Bool

    /// Identifier of the channel
    public let supergroupId: Int


    public init(
        signMessages: Bool,
        supergroupId: Int
    ) {
        self.signMessages = signMessages
        self.supergroupId = supergroupId
    }
}

