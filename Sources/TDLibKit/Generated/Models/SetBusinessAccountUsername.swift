//
//  SetBusinessAccountUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
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

