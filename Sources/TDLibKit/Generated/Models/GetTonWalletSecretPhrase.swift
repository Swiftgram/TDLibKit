//
//  GetTonWalletSecretPhrase.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Returns the secret phrase of the user's TON wallet. Works only if tonWalletState.can_export_phrase is true
public struct GetTonWalletSecretPhrase: Codable, Equatable, Hashable {

    /// Password of the current user; pass an empty string unless receive an error with a message "PASSWORD_MISSING" for a passwordless request
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

