//
//  CheckAuthenticationEmailCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Checks the authentication of an email address. Works only when the current authorization state is authorizationStateWaitEmailCode
public struct CheckAuthenticationEmailCode: Codable, Equatable, Hashable {

    /// Email address authentication to check
    public let code: EmailAddressAuthentication?


    public init(code: EmailAddressAuthentication?) {
        self.code = code
    }
}

