//
//  ToggleSupergroupSignMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-d0ff90bb
//  https://github.com/tdlib/td/tree/d0ff90bb
//

import Foundation


/// Toggles whether sender signature is added to sent messages in a channel; requires can_change_info member right
public struct ToggleSupergroupSignMessages: Codable, Equatable, Hashable {

    /// New value of sign_messages
    public let signMessages: Bool?

    /// Identifier of the channel
    public let supergroupId: Int64?


    public init(
        signMessages: Bool?,
        supergroupId: Int64?
    ) {
        self.signMessages = signMessages
        self.supergroupId = supergroupId
    }
}

