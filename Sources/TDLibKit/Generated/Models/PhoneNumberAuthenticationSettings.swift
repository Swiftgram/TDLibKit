//
//  PhoneNumberAuthenticationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-66234ae2
//  https://github.com/tdlib/td/tree/66234ae2
//

import Foundation


/// Contains settings for the authentication of the user's phone number
public struct PhoneNumberAuthenticationSettings: Codable, Equatable, Hashable {

    /// Pass true if the authentication code may be sent via a flash call to the specified phone number
    public let allowFlashCall: Bool

    /// Pass true if the authentication code may be sent via a missed call to the specified phone number
    public let allowMissedCall: Bool

    /// For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services >= 10.2) to automatically receive the authentication code from the SMS. See https://developers.google.com/identity/sms-retriever/ for more details
    public let allowSmsRetrieverApi: Bool

    /// List of up to 20 authentication tokens, recently received in updateOption("authentication_token") in previously logged out sessions
    public let authenticationTokens: [String]

    /// For official Android and iOS applications only; pass null otherwise. Settings for Firebase Authentication
    public let firebaseAuthenticationSettings: FirebaseAuthenticationSettings?

    /// Pass true if the authenticated phone number is used on the current device
    public let isCurrentPhoneNumber: Bool


    public init(
        allowFlashCall: Bool,
        allowMissedCall: Bool,
        allowSmsRetrieverApi: Bool,
        authenticationTokens: [String],
        firebaseAuthenticationSettings: FirebaseAuthenticationSettings?,
        isCurrentPhoneNumber: Bool
    ) {
        self.allowFlashCall = allowFlashCall
        self.allowMissedCall = allowMissedCall
        self.allowSmsRetrieverApi = allowSmsRetrieverApi
        self.authenticationTokens = authenticationTokens
        self.firebaseAuthenticationSettings = firebaseAuthenticationSettings
        self.isCurrentPhoneNumber = isCurrentPhoneNumber
    }
}

