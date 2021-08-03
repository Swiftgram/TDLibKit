//
//  GetUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns information about a user by their identifier. This is an offline request if the current user is not a bot
public struct GetUser: Codable {

    /// User identifier
    public let userId: Int


    public init(userId: Int) {
        self.userId = userId
    }
}

