//
//  CheckPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-2725f7c5
//  https://github.com/tdlib/td/tree/2725f7c5
//

import Foundation


/// Checks phone number confirmation code
public struct CheckPhoneNumberConfirmationCode: Codable, Equatable {

    /// The phone number confirmation code
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

