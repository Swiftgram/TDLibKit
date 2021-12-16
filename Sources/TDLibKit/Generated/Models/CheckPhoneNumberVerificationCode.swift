//
//  CheckPhoneNumberVerificationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-83bd3e33
//  https://github.com/tdlib/td/tree/83bd3e33
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

