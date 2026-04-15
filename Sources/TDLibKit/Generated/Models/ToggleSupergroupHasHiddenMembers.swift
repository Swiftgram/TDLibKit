//
//  ToggleSupergroupHasHiddenMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Toggles whether non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers. Can be called only if supergroupFullInfo.can_hide_members == true
public struct ToggleSupergroupHasHiddenMembers: Codable, Equatable, Hashable {

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

