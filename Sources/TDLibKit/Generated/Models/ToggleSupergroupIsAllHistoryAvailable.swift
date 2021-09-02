//
//  ToggleSupergroupIsAllHistoryAvailable.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Toggles whether the message history of a supergroup is available to new members; requires can_change_info administrator right
public struct ToggleSupergroupIsAllHistoryAvailable: Codable {

    /// The new value of is_all_history_available
    public let isAllHistoryAvailable: Bool

    /// The identifier of the supergroup
    public let supergroupId: Int


    public init(
        isAllHistoryAvailable: Bool,
        supergroupId: Int
    ) {
        self.isAllHistoryAvailable = isAllHistoryAvailable
        self.supergroupId = supergroupId
    }
}

