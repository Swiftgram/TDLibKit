//
//  ToggleSupergroupIsForum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Toggles whether the supergroup is a forum; requires owner privileges in the supergroup. Discussion supergroups can't be converted to forums
public struct ToggleSupergroupIsForum: Codable, Equatable, Hashable {

    /// New value of has_forum_tabs; ignored if is_forum is false
    public let hasForumTabs: Bool?

    /// New value of is_forum
    public let isForum: Bool?

    /// Identifier of the supergroup
    public let supergroupId: Int64?


    public init(
        hasForumTabs: Bool?,
        isForum: Bool?,
        supergroupId: Int64?
    ) {
        self.hasForumTabs = hasForumTabs
        self.isForum = isForum
        self.supergroupId = supergroupId
    }
}

