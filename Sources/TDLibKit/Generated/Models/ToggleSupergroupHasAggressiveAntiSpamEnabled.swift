//
//  ToggleSupergroupHasAggressiveAntiSpamEnabled.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Toggles whether aggressive anti-spam checks are enabled in the supergroup. Can be called only if supergroupFullInfo.can_toggle_aggressive_anti_spam == true
public struct ToggleSupergroupHasAggressiveAntiSpamEnabled: Codable, Equatable, Hashable {

    /// The new value of has_aggressive_anti_spam_enabled
    public let hasAggressiveAntiSpamEnabled: Bool?

    /// The identifier of the supergroup, which isn't a broadcast group
    public let supergroupId: Int64?


    public init(
        hasAggressiveAntiSpamEnabled: Bool?,
        supergroupId: Int64?
    ) {
        self.hasAggressiveAntiSpamEnabled = hasAggressiveAntiSpamEnabled
        self.supergroupId = supergroupId
    }
}

