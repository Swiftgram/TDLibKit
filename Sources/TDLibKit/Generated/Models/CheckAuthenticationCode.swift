//
//  CheckAuthenticationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode
public struct CheckAuthenticationCode: Codable, Equatable, Hashable {

    /// Authentication code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

