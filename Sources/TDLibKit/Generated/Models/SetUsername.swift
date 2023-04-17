//
//  SetUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Changes the editable username of the current user
public struct SetUsername: Codable, Equatable {

    /// The new value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username
    public let username: String?


    public init(username: String?) {
        self.username = username
    }
}

