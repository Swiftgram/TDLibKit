//
//  ToggleSupergroupJoinByRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators; requires can_restrict_members administrator right
public struct ToggleSupergroupJoinByRequest: Codable, Equatable, Hashable {

    /// New value of join_by_request
    public let joinByRequest: Bool?

    /// Identifier of the supergroup that isn't a broadcast group and isn't a channel direct message group
    public let supergroupId: Int64?


    public init(
        joinByRequest: Bool?,
        supergroupId: Int64?
    ) {
        self.joinByRequest = joinByRequest
        self.supergroupId = supergroupId
    }
}

