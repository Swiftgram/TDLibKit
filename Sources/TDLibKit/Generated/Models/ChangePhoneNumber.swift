//
//  ChangePhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-3f00bebf
//  https://github.com/tdlib/td/tree/3f00bebf
//

import Foundation


/// Changes the phone number of the user and sends an authentication code to the user's new phone number; for official Android and iOS applications only. On success, returns information about the sent code
public struct ChangePhoneNumber: Codable, Equatable, Hashable {

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

