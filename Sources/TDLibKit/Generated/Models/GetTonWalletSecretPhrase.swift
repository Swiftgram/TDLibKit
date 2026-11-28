//
//  GetTonWalletSecretPhrase.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Returns the secret phrase of the user's TON wallet. Works only if tonWalletState.can_export_phrase is true
public struct GetTonWalletSecretPhrase: Codable, Equatable, Hashable {

    /// Password of the current user; pass an empty string unless an error with a message "PASSWORD_MISSING" was received for a passwordless request
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

