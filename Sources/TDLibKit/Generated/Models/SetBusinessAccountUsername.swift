//
//  SetBusinessAccountUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Changes the editable username of a business account; for bots only
public struct SetBusinessAccountUsername: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection
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

