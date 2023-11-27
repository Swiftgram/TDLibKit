//
//  SearchUserByToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-404761c5
//  https://github.com/tdlib/td/tree/404761c5
//

import Foundation


/// Searches a user by a token from the user's link
public struct SearchUserByToken: Codable, Equatable, Hashable {

    /// Token to search for
    public let token: String?


    public init(token: String?) {
        self.token = token
    }
}

