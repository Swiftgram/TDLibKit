//
//  SendPhoneNumberFirebaseSms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Sends Firebase Authentication SMS to the specified phone number. Works only when received a code of the type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos
public struct SendPhoneNumberFirebaseSms: Codable, Equatable, Hashable {

    /// Play Integrity API or SafetyNet Attestation API token for the Android application, or secret from push notification for the iOS application
    public let token: String?


    public init(token: String?) {
        self.token = token
    }
}

