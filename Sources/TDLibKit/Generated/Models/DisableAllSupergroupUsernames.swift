//
//  DisableAllSupergroupUsernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Disables all active non-editable usernames of a supergroup or channel, requires owner privileges in the supergroup or channel
public struct DisableAllSupergroupUsernames: Codable, Equatable, Hashable {

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64?


    public init(supergroupId: Int64?) {
        self.supergroupId = supergroupId
    }
}

