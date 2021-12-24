//
//  SetUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Changes the username of the current user
public struct SetUsername: Codable, Equatable {

    /// The new value of the username. Use an empty string to remove the username
    public let username: String?


    public init(username: String?) {
        self.username = username
    }
}

