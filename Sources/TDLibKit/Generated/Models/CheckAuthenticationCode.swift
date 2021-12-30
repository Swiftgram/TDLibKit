//
//  CheckAuthenticationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
//

import Foundation


/// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode
public struct CheckAuthenticationCode: Codable, Equatable {

    /// Authentication code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

