//
//  CheckPhoneNumberVerificationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-3f763f6f
//  https://github.com/tdlib/td/tree/3f763f6f
//

import Foundation


/// Checks the phone number verification code for Telegram Passport
public struct CheckPhoneNumberVerificationCode: Codable, Equatable {

    /// Verification code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

