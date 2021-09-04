//
//  SetAuthenticationPhoneNumber.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
public struct SetAuthenticationPhoneNumber: Codable {

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
