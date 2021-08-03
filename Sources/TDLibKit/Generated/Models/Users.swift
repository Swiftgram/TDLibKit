//
//  Users.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
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

