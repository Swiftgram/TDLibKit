//
//  ToggleUsernameIsActive.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Changes active state for a username of the current user. The editable username can't be disabled. May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been reached
public struct ToggleUsernameIsActive: Codable, Equatable {

    /// Pass true to activate the username; pass false to disable it
    public let isActive: Bool?

    /// The username to change
    public let username: String?


    public init(
        isActive: Bool?,
        username: String?
    ) {
        self.isActive = isActive
        self.username = username
    }
}

