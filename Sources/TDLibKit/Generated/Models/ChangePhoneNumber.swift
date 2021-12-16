//
//  ChangePhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-83bd3e33
//  https://github.com/tdlib/td/tree/83bd3e33
//

import Foundation


/// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code
public struct ChangePhoneNumber: Codable, Equatable {

    /// The new phone number of the user in international format
    public let phoneNumber: String?

    /// Settings for the authentication of the user's phone number; pass null to use default settings
    public let settings: PhoneNumberAuthenticationSettings?


    public init(
        phoneNumber: String?,
        settings: PhoneNumberAuthenticationSettings?
    ) {
        self.phoneNumber = phoneNumber
        self.settings = settings
    }
}

