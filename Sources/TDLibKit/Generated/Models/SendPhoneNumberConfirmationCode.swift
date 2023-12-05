//
//  SendPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation
public struct SendPhoneNumberConfirmationCode: Codable, Equatable, Hashable {

    /// Hash value from the link
    public let hash: String?

    /// Phone number value from the link
    public let phoneNumber: String?

    /// Settings for the authentication of the user's phone number; pass null to use default settings
    public let settings: PhoneNumberAuthenticationSettings?


    public init(
        hash: String?,
        phoneNumber: String?,
        settings: PhoneNumberAuthenticationSettings?
    ) {
        self.hash = hash
        self.phoneNumber = phoneNumber
        self.settings = settings
    }
}

