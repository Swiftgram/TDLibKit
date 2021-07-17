//
//  Users.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Represents a list of users
public struct Users: Codable {

    /// Approximate total count of users found
    public let totalCount: Int

    /// A list of user identifiers
    public let userIds: [Int]


    public init(
        totalCount: Int,
        userIds: [Int]
    ) {
        self.totalCount = totalCount
        self.userIds = userIds
    }
}

