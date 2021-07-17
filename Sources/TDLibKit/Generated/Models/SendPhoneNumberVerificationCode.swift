//
//  SendPhoneNumberVerificationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Sends a code to verify a phone number to be added to a user's Telegram Passport
public struct SendPhoneNumberVerificationCode: Codable {

    /// The phone number of the user, in international format
    public let phoneNumber: String

    /// Settings for the authentication of the user's phone number
    public let settings: PhoneNumberAuthenticationSettings


    public init(
        phoneNumber: String,
        settings: PhoneNumberAuthenticationSettings
    ) {
        self.phoneNumber = phoneNumber
        self.settings = settings
    }
}

