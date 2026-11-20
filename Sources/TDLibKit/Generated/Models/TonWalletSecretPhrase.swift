//
//  TonWalletSecretPhrase.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Contains the secret phrase of a TON wallet
public struct TonWalletSecretPhrase: Codable, Equatable, Hashable {

    /// The secret phrase as a space separated list of words
    public let secretPhrase: String


    public init(secretPhrase: String) {
        self.secretPhrase = secretPhrase
    }
}

