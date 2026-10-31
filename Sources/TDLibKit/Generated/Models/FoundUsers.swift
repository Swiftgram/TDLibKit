//
//  FoundUsers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-4c6377aa
//  https://github.com/tdlib/td/tree/4c6377aa
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

