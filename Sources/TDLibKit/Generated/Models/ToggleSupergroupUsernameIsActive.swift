//
//  ToggleSupergroupUsernameIsActive.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes active state for a username of a supergroup or channel, requires owner privileges in the supergroup or channel. The editable username can't be disabled. May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been reached
public struct ToggleSupergroupUsernameIsActive: Codable, Equatable, Hashable {

    /// Pass true to activate the username; pass false to disable it
    public let isActive: Bool?

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64?

    /// The username to change
    public let username: String?


    public init(
        isActive: Bool?,
        supergroupId: Int64?,
        username: String?
    ) {
        self.isActive = isActive
        self.supergroupId = supergroupId
        self.username = username
    }
}

