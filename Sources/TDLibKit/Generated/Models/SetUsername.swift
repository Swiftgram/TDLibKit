//
//  SetUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Changes the editable username of the current user
public struct SetUsername: Codable, Equatable, Hashable {

    /// The new value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username
    public let username: String?


    public init(username: String?) {
        self.username = username
    }
}

