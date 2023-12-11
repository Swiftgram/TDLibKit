//
//  ToggleSupergroupIsAllHistoryAvailable.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-1a50ec47
//  https://github.com/tdlib/td/tree/1a50ec47
//

import Foundation


/// Toggles whether the message history of a supergroup is available to new members; requires can_change_info administrator right
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

