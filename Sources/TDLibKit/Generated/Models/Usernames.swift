//
//  Usernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-b41a51f2
//  https://github.com/tdlib/td/tree/b41a51f2
//

import Foundation


/// Describes usernames assigned to a user, a supergroup, or a channel
public struct Usernames: Codable, Equatable, Hashable {

    /// List of active usernames; the first one must be shown as the primary username. The order of active usernames can be changed with reorderActiveUsernames, reorderBotActiveUsernames or reorderSupergroupActiveUsernames
    public let activeUsernames: [String]

    /// List of currently disabled usernames; the username can be activated with toggleUsernameIsActive, toggleBotUsernameIsActive, or toggleSupergroupUsernameIsActive
    public let disabledUsernames: [String]

    /// The active username, which can be changed with setUsername or setSupergroupUsername
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

