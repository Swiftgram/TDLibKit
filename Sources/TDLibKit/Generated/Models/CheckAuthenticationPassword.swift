//
//  CheckAuthenticationPassword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Checks the authentication password for correctness. Works only when the current authorization state is authorizationStateWaitPassword
public struct CheckAuthenticationPassword: Codable {

    /// The password to check
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

