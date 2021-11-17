//
//  CheckRecoveryEmailAddressCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Checks the 2-step verification recovery email address verification code
public struct CheckRecoveryEmailAddressCode: Codable {

    /// Verification code
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

