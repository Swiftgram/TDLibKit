//
//  DisableAllSupergroupUsernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-8ee04b37
//  https://github.com/tdlib/td/tree/8ee04b37
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

