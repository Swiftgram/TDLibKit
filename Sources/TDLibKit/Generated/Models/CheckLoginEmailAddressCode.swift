//
//  CheckLoginEmailAddressCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-4257a341
//  https://github.com/tdlib/td/tree/4257a341
//

import Foundation


/// Checks the login email address authentication
public struct CheckLoginEmailAddressCode: Codable, Equatable, Hashable {

    /// Email address authentication to check
    public let code: EmailAddressAuthentication?


    public init(code: EmailAddressAuthentication?) {
        self.code = code
    }
}

