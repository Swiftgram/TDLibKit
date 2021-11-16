//
//  CheckPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Checks phone number confirmation code
public struct CheckPhoneNumberConfirmationCode: Codable {

    /// The phone number confirmation code
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

