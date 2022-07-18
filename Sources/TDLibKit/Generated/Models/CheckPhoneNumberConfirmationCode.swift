//
//  CheckPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0147c97f
//  https://github.com/tdlib/td/tree/0147c97f
//

import Foundation


/// Checks phone number confirmation code
public struct CheckPhoneNumberConfirmationCode: Codable, Equatable {

    /// Confirmation code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

