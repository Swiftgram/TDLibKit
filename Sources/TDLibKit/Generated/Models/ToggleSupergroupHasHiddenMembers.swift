//
//  ToggleSupergroupHasHiddenMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

