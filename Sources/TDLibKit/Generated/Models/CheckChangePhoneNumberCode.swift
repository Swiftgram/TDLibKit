//
//  CheckChangePhoneNumberCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-743a30d4
//  https://github.com/tdlib/td/tree/743a30d4
//

import Foundation


/// Checks the authentication code sent to confirm a new phone number of the user
public struct CheckChangePhoneNumberCode: Codable, Equatable {

    /// Verification code received by SMS, phone call or flash call
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

