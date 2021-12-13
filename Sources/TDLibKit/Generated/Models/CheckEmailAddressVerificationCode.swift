//
//  CheckEmailAddressVerificationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-aa8a4979
//  https://github.com/tdlib/td/tree/aa8a4979
//

import Foundation


/// Checks the email address verification code for Telegram Passport
public struct CheckEmailAddressVerificationCode: Codable, Equatable {

    /// Verification code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

