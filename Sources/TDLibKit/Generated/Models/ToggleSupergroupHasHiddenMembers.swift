//
//  ToggleSupergroupHasHiddenMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-a08b1f91
//  https://github.com/tdlib/td/tree/a08b1f91
//

import Foundation


/// Toggles whether non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers. Can be called only if supergroupFullInfo.can_hide_members == true
public struct ToggleSupergroupHasHiddenMembers: Codable, Equatable {

    /// New value of has_hidden_members
    public let hasHiddenMembers: Bool?

    /// Identifier of the supergroup
    public let supergroupId: Int64?


    public init(
        hasHiddenMembers: Bool?,
        supergroupId: Int64?
    ) {
        self.hasHiddenMembers = hasHiddenMembers
        self.supergroupId = supergroupId
    }
}

