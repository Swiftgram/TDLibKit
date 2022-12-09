//
//  ToggleSupergroupIsForum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-29752073
//  https://github.com/tdlib/td/tree/29752073
//

import Foundation


/// Toggles whether the supergroup is a forum; requires owner privileges in the supergroup
public struct ToggleSupergroupIsForum: Codable, Equatable {

    /// New value of is_forum. A supergroup can be converted to a forum, only if it has at least getOption("forum_member_count_min") members
    public let isForum: Bool?

    /// Identifier of the supergroup
    public let supergroupId: Int64?


    public init(
        isForum: Bool?,
        supergroupId: Int64?
    ) {
        self.isForum = isForum
        self.supergroupId = supergroupId
    }
}

