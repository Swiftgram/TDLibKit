//
//  SetApplicationVerificationToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Application or reCAPTCHA verification has been completed. Can be called before authorization
public struct SetApplicationVerificationToken: Codable, Equatable, Hashable {

    /// Play Integrity API token for the Android application, or secret from push notification for the iOS application for application verification, or reCAPTCHA token for reCAPTCHA verifications; pass an empty string to abort verification and receive the error "VERIFICATION_FAILED" for the request
    public let token: String?

    /// Unique identifier for the verification process as received from updateApplicationVerificationRequired or updateApplicationRecaptchaVerificationRequired
    public let verificationId: Int64?


    public init(
        token: String?,
        verificationId: Int64?
    ) {
        self.token = token
        self.verificationId = verificationId
    }
}

