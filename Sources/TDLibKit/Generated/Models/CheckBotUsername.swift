//
//  CheckBotUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
//

import Foundation


/// Checks whether a username can be set for a new bot or assigned as a secondary username to an existing bot. Use checkChatUsername to check username for other chat types
public struct CheckBotUsername: Codable, Equatable, Hashable {

    /// Pass true to check whether the username is suitable as a secondary username for an existing bot; pass false to check whether the username is suitable for createBot
    public let isSecondary: Bool?

    /// Username to be checked
    public let username: String?


    public init(
        isSecondary: Bool?,
        username: String?
    ) {
        self.isSecondary = isSecondary
        self.username = username
    }
}

