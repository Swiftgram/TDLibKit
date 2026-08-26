//
//  CheckBotUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
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

