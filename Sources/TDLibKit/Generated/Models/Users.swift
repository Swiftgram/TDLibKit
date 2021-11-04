//
//  Users.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Represents a list of users
public struct Users: Codable {

    /// Approximate total count of users found
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

