//
//  SetSupergroupUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-3d4b4ac0
//  https://github.com/tdlib/td/tree/3d4b4ac0
//

import Foundation


/// Changes the editable username of a supergroup or channel, requires owner privileges in the supergroup or channel
public struct SetSupergroupUsername: Codable, Equatable {

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64?

    /// New value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username
    public let username: String?


    public init(
        supergroupId: Int64?,
        username: String?
    ) {
        self.supergroupId = supergroupId
        self.username = username
    }
}

