//
//  CheckPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-1e1ab5d1
//  https://github.com/tdlib/td/tree/1e1ab5d1
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

