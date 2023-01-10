//
//  SearchUserByToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-ed2644c2
//  https://github.com/tdlib/td/tree/ed2644c2
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

