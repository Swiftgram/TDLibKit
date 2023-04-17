//
//  ToggleSupergroupIsForum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Toggles whether the supergroup is a forum; requires owner privileges in the supergroup. Discussion supergroups can't be converted to forums
public struct ToggleSupergroupIsForum: Codable, Equatable {

    /// New value of is_forum
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

