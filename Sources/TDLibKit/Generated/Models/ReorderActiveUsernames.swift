//
//  ReorderActiveUsernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-3f00bebf
//  https://github.com/tdlib/td/tree/3f00bebf
//

import Foundation


/// Changes order of active usernames of the current user
public struct ReorderActiveUsernames: Codable, Equatable, Hashable {

    /// The new order of active usernames. All currently active usernames must be specified
    public let usernames: [String]?


    public init(usernames: [String]?) {
        self.usernames = usernames
    }
}

