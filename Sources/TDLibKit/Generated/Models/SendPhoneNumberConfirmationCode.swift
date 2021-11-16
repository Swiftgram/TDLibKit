//
//  SendPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation
public struct SendPhoneNumberConfirmationCode: Codable {

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

