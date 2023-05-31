//
//  SearchUserByToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-fe734fd6
//  https://github.com/tdlib/td/tree/fe734fd6
//

import Foundation


/// Searches a user by a token from the user's link
public struct SearchUserByToken: Codable, Equatable {

    /// Token to search for
    public let token: String?


    public init(token: String?) {
        self.token = token
    }
}

