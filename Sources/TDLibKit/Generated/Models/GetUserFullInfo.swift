//
//  GetUserFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns full information about a user by their identifier
public struct GetUserFullInfo: Codable {

    /// User identifier
    public let userId: Int


    public init(userId: Int) {
        self.userId = userId
    }
}

