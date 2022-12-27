//
//  ToggleSupergroupIsAggressiveAntiSpamEnabled.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-86d5f12e
//  https://github.com/tdlib/td/tree/86d5f12e
//

import Foundation


/// Toggles whether aggressive anti-spam checks are enabled in the supergroup; requires can_delete_messages administrator right. Can be called only if the supergroup has at least getOption("aggressive_anti_spam_supergroup_member_count_min") members
public struct ToggleSupergroupIsAggressiveAntiSpamEnabled: Codable, Equatable {

    /// The new value of is_aggressive_anti_spam_enabled
    public let isAggressiveAntiSpamEnabled: Bool?

    /// The identifier of the supergroup, which isn't a broadcast group
    public let supergroupId: Int64?


    public init(
        isAggressiveAntiSpamEnabled: Bool?,
        supergroupId: Int64?
    ) {
        self.isAggressiveAntiSpamEnabled = isAggressiveAntiSpamEnabled
        self.supergroupId = supergroupId
    }
}

