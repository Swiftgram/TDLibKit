//
//  SetSupergroupUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes the username of a supergroup or channel, requires owner privileges in the supergroup or channel
public struct SetSupergroupUsername: Codable, Equatable {

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64?

    /// New value of the username. Use an empty string to remove the username
    public let username: String?


    public init(
        supergroupId: Int64?,
        username: String?
    ) {
        self.supergroupId = supergroupId
        self.username = username
    }
}

