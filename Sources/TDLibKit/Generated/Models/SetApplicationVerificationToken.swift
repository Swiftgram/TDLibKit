//
//  SetApplicationVerificationToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Application verification has been completed. Can be called before authorization
public struct SetApplicationVerificationToken: Codable, Equatable, Hashable {

    /// Play Integrity API token for the Android application, or secret from push notification for the iOS application; pass an empty string to abort verification and receive error VERIFICATION_FAILED for the request
    public let token: String?

    /// Unique identifier for the verification process as received from updateApplicationVerificationRequired
    public let verificationId: Int64?


    public init(
        token: String?,
        verificationId: Int64?
    ) {
        self.token = token
        self.verificationId = verificationId
    }
}

