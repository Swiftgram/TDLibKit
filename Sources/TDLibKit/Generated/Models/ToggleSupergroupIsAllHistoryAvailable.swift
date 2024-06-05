//
//  ToggleSupergroupIsAllHistoryAvailable.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Toggles whether the message history of a supergroup is available to new members; requires can_change_info member right
public struct ToggleSupergroupIsAllHistoryAvailable: Codable, Equatable, Hashable {

    /// The new value of is_all_history_available
    public let isAllHistoryAvailable: Bool?

    /// The identifier of the supergroup
    public let supergroupId: Int64?


    public init(
        isAllHistoryAvailable: Bool?,
        supergroupId: Int64?
    ) {
        self.isAllHistoryAvailable = isAllHistoryAvailable
        self.supergroupId = supergroupId
    }
}

