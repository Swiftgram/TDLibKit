//
//  Contact.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a user contact
public struct Contact: Codable, Equatable, Hashable {

    /// First name of the user; 1-255 characters in length
    public let firstName: String

    /// Last name of the user
    public let lastName: String

    /// Phone number of the user
    public let phoneNumber: String

    /// Identifier of the user, if known; 0 otherwise
    public let userId: Int64

    /// Additional data about the user in a form of vCard; 0-2048 bytes in length
    public let vcard: String


    public init(
        firstName: String,
        lastName: String,
        phoneNumber: String,
        userId: Int64,
        vcard: String
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.userId = userId
        self.vcard = vcard
    }
}

