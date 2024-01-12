//
//  UserLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-4bafdc2b
//  https://github.com/tdlib/td/tree/4bafdc2b
//

import Foundation


/// Contains an HTTPS URL, which can be used to get information about a user
public struct UserLink: Codable, Equatable, Hashable {

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

