//
//  CheckBotUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
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

