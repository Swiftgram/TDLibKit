//
//  EnableTonWalletBackup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Enables backup of the TON wallet of the user. Works only if tonWalletState.can_enable_backup is true
public struct EnableTonWalletBackup: Codable, Equatable, Hashable {

    /// Proof of the TON wallet ownership; use getTonWalletOwnershipProofChallenge to get a challenge for the proof
    public let proof: TonWalletOwnershipProof?

    /// The secret phrase of the user's TON wallet as a space separated list of words
    public let secretPhrase: String?


    public init(
        proof: TonWalletOwnershipProof?,
        secretPhrase: String?
    ) {
        self.proof = proof
        self.secretPhrase = secretPhrase
    }
}

