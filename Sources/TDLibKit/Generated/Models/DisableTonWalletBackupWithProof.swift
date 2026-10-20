//
//  DisableTonWalletBackupWithProof.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
//

import Foundation


/// Disables backup of the TON wallet of the user using proof of wallet ownership instead of the password. Works only if tonWalletState.is_backup_enabled is true
public struct DisableTonWalletBackupWithProof: Codable, Equatable, Hashable {

    /// Proof of the TON wallet ownership; use getTonWalletOwnershipProofChallenge to get a challenge for the proof
    public let proof: TonWalletOwnershipProof?


    public init(proof: TonWalletOwnershipProof?) {
        self.proof = proof
    }
}

