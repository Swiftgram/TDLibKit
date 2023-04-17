//
//  Usernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Describes usernames assigned to a user, a supergroup, or a channel
public struct Usernames: Codable, Equatable {

    /// List of active usernames; the first one must be shown as the primary username. The order of active usernames can be changed with reorderActiveUsernames or reorderSupergroupActiveUsernames
    public let activeUsernames: [String]

    /// List of currently disabled usernames; the username can be activated with toggleUsernameIsActive/toggleSupergroupUsernameIsActive
    public let disabledUsernames: [String]

    /// The active username, which can be changed with setUsername/setSupergroupUsername
    public let editableUsername: String


    public init(
        activeUsernames: [String],
        disabledUsernames: [String],
        editableUsername: String
    ) {
        self.activeUsernames = activeUsernames
        self.disabledUsernames = disabledUsernames
        self.editableUsername = editableUsername
    }
}

