//
//  UserLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains an HTTPS URL that can be used to get information about a user
public struct UserLink: Codable, Equatable, Hashable {

    /// True, if a permanent link to the current user can be received; false if all links to the current user expire
    public let canGetPermanentLink: Bool

    /// Remaining time for which the link is valid, in seconds; 0 if the link is permanent
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

