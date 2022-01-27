//
//  GetUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// Returns information about a user by their identifier. This is an offline request if the current user is not a bot
public struct GetUser: Codable, Equatable {

    /// User identifier
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

