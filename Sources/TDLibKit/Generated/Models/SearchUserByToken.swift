//
//  SearchUserByToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4580cfc2
//  https://github.com/tdlib/td/tree/4580cfc2
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

