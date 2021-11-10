//
//  CheckPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
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

