//
//  CheckPhoneNumberVerificationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Checks the phone number verification code for Telegram Passport
public struct CheckPhoneNumberVerificationCode: Codable {

    /// Verification code
    public let code: String


    public init(code: String) {
        self.code = code
    }
}

