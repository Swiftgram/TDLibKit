//
//  CheckBotUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Checks whether a username can be set for a new bot. Use checkChatUsername to check username for other chat types
public struct CheckBotUsername: Codable, Equatable, Hashable {

    /// Username to be checked
    public let username: String?


    public init(username: String?) {
        self.username = username
    }
}

