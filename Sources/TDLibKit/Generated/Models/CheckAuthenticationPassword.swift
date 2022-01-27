//
//  CheckAuthenticationPassword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// Checks the authentication password for correctness. Works only when the current authorization state is authorizationStateWaitPassword
public struct CheckAuthenticationPassword: Codable, Equatable {

    /// The password to check
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

