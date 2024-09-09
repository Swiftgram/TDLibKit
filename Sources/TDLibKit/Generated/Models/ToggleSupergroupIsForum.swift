//
//  ToggleSupergroupIsForum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-87d88107
//  https://github.com/tdlib/td/tree/87d88107
//

import Foundation


/// Toggles whether the supergroup is a forum; requires owner privileges in the supergroup. Discussion supergroups can't be converted to forums
public struct ToggleSupergroupIsForum: Codable, Equatable, Hashable {

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

