//
//  SendPhoneNumberCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Sends a code to the specified phone number. Aborts previous phone number verification if there was one. On success, returns information about the sent code
public struct SendPhoneNumberCode: Codable, Equatable, Hashable {

    /// The phone number, in international format
    public let phoneNumber: String?

    /// Settings for the authentication of the user's phone number; pass null to use default settings
    public let settings: PhoneNumberAuthenticationSettings?

    /// Type of the request for which the code is sent
    public let type: PhoneNumberCodeType?


    public init(
        phoneNumber: String?,
        settings: PhoneNumberAuthenticationSettings?,
        type: PhoneNumberCodeType?
    ) {
        self.phoneNumber = phoneNumber
        self.settings = settings
        self.type = type
    }
}

