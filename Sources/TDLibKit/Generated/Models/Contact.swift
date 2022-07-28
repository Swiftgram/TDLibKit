//
//  Contact.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a user contact
public struct Contact: Codable, Equatable {

    /// First name of the user; 1-255 characters in length
    public let firstName: String

    /// Last name of the user
    public let lastName: String

    /// Phone number of the user
    public let phoneNumber: String

    /// Identifier of the user, if known; otherwise 0
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

