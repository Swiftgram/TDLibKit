//
//  FoundUsers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Represents a list of found users
public struct FoundUsers: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Identifiers of the found users
    public let userIds: [Int64]


    public init(
        nextOffset: String,
        userIds: [Int64]
    ) {
        self.nextOffset = nextOffset
        self.userIds = userIds
    }
}

