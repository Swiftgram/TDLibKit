//
//  SetSupergroupUnrestrictBoostCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes the number of times the supergroup must be boosted by a user to ignore slow mode and chat permission restrictions; requires can_restrict_members administrator right
public struct SetSupergroupUnrestrictBoostCount: Codable, Equatable, Hashable {

    /// Identifier of the supergroup
    public let supergroupId: Int64?

    /// New value of the unrestrict_boost_count supergroup setting; 0-8. Use 0 to remove the setting
    public let unrestrictBoostCount: Int?


    public init(
        supergroupId: Int64?,
        unrestrictBoostCount: Int?
    ) {
        self.supergroupId = supergroupId
        self.unrestrictBoostCount = unrestrictBoostCount
    }
}

