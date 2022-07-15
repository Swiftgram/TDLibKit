//
//  CheckAuthenticationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
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

