//
//  UserLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Contains an HTTPS URL, which can be used to get information about a user
public struct UserLink: Codable, Equatable, Hashable {

    /// True, if a permanent link to the current user can be received; false if all links to the current user expire
    public let canGetPermanentLink: Bool

    /// Left time for which the link is valid, in seconds; 0 if the link is permanent
    public let expiresIn: Int

    /// The URL
    public let url: String


    public init(
        canGetPermanentLink: Bool,
        expiresIn: Int,
        url: String
    ) {
        self.canGetPermanentLink = canGetPermanentLink
        self.expiresIn = expiresIn
        self.url = url
    }
}

