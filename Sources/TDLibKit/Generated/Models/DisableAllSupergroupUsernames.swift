//
//  DisableAllSupergroupUsernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-a08b1f91
//  https://github.com/tdlib/td/tree/a08b1f91
//

import Foundation


/// Disables all active non-editable usernames of a supergroup or channel, requires owner privileges in the supergroup or channel
public struct DisableAllSupergroupUsernames: Codable, Equatable {

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64?


    public init(supergroupId: Int64?) {
        self.supergroupId = supergroupId
    }
}

