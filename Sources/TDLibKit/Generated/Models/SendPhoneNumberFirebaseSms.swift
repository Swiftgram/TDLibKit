//
//  SendPhoneNumberFirebaseSms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Sends a Firebase Authentication SMS to the specified phone number. Works only after receiving a code of the type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos
public struct SendPhoneNumberFirebaseSms: Codable, Equatable, Hashable {

    /// Play Integrity API or SafetyNet Attestation API token for the Android application, or secret from a push notification for the iOS application
    public let token: String?


    public init(token: String?) {
        self.token = token
    }
}

