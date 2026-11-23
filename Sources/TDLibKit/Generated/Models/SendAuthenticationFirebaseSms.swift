//
//  SendAuthenticationFirebaseSms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Sends a Firebase Authentication SMS to the phone number of the user. Works only when the current authorization state is authorizationStateWaitCode and the server returned a code of the type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos
public struct SendAuthenticationFirebaseSms: Codable, Equatable, Hashable {

    /// Play Integrity API or SafetyNet Attestation API token for the Android application, or secret from a push notification for the iOS application
    public let token: String?


    public init(token: String?) {
        self.token = token
    }
}

