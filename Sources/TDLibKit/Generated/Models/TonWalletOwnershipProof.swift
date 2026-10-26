//
//  TonWalletOwnershipProof.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Represents a proof of TON wallet ownership
public struct TonWalletOwnershipProof: Codable, Equatable, Hashable {

    /// Public key of the wallet
    public let publicKey: Data

    /// The signature proving the ownership
    public let signature: Data

    /// The current UNIX timestamp which was used to create the proof
    public let timestamp: Int


    public init(
        publicKey: Data,
        signature: Data,
        timestamp: Int
    ) {
        self.publicKey = publicKey
        self.signature = signature
        self.timestamp = timestamp
    }
}

