//
//  CheckLoginEmailAddressCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Checks the login email address authentication
public struct CheckLoginEmailAddressCode: Codable, Equatable {

    /// Email address authentication to check
    public let code: EmailAddressAuthentication?


    public init(code: EmailAddressAuthentication?) {
        self.code = code
    }
}

