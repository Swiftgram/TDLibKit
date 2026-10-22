//
//  ReplaceTonWallet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Replaces the current TON wallet with another existing v6r2 wallet or changes private key of the current TON wallet; can be used only if getOption("can_use_ton_wallet")
public struct ReplaceTonWallet: Codable, Equatable, Hashable {

    /// Original public key of the new TON wallet
    public let anchorPublicKey: Data?

    /// Password of the current user; pass an empty string unless receive an error with a message "PASSWORD_MISSING" for a passwordless request
    public let password: String?

    /// Proof of ownership of the new private key of the TON wallet; use getTonWalletOwnershipProofChallenge to get a challenge for the proof
    public let proof: TonWalletOwnershipProof?


    public init(
        anchorPublicKey: Data?,
        password: String?,
        proof: TonWalletOwnershipProof?
    ) {
        self.anchorPublicKey = anchorPublicKey
        self.password = password
        self.proof = proof
    }
}

