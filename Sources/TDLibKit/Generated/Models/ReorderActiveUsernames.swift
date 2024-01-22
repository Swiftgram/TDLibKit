//
//  ReorderActiveUsernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-b4c07559
//  https://github.com/tdlib/td/tree/b4c07559
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

