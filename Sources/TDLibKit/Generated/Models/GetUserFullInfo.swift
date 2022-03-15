//
//  GetUserFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
//

import Foundation


/// Returns full information about a user by their identifier
public struct GetUserFullInfo: Codable, Equatable {

    /// User identifier
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

