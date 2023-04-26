//
//  UserLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4041ecb5
//  https://github.com/tdlib/td/tree/4041ecb5
//

import Foundation


/// Contains an HTTPS URL, which can be used to get information about a user
public struct UserLink: Codable, Equatable {

    /// Left time for which the link is valid, in seconds; 0 if the link is a public username link
    public let expiresIn: Int

    /// The URL
    public let url: String


    public init(
        expiresIn: Int,
        url: String
    ) {
        self.expiresIn = expiresIn
        self.url = url
    }
}

