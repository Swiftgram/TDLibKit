//
//  SetBusinessAccountUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Changes the editable username of a business account; for bots only
public struct SetBusinessAccountUsername: Codable, Equatable, Hashable {

    /// Unique identifier of business connection
    public let businessConnectionId: String?

    /// The new value of the username
    public let username: String?


    public init(
        businessConnectionId: String?,
        username: String?
    ) {
        self.businessConnectionId = businessConnectionId
        self.username = username
    }
}

