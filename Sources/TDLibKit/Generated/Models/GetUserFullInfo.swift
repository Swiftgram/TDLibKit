//
//  GetUserFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Returns full information about a user by their identifier
public struct GetUserFullInfo: Codable {

    /// User identifier
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

