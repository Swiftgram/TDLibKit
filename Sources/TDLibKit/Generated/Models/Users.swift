//
//  Users.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Represents a list of users
public struct Users: Codable, Equatable, Hashable {

    /// Approximate total number of users found
    public let totalCount: Int

    /// A list of user identifiers
    public let userIds: [Int64]


    public init(
        totalCount: Int,
        userIds: [Int64]
    ) {
        self.totalCount = totalCount
        self.userIds = userIds
    }
}

