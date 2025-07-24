//
//  ReorderSupergroupActiveUsernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes order of active usernames of a supergroup or channel, requires owner privileges in the supergroup or channel
public struct ReorderSupergroupActiveUsernames: Codable, Equatable, Hashable {

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64?

    /// The new order of active usernames. All currently active usernames must be specified
    public let usernames: [String]?


    public init(
        supergroupId: Int64?,
        usernames: [String]?
    ) {
        self.supergroupId = supergroupId
        self.usernames = usernames
    }
}

