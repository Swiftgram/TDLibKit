//
//  TonWalletOwnershipProof.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Represents a proof of TON wallet ownership
public struct TonWalletOwnershipProof: Codable, Equatable, Hashable {

    /// Public key of the wallet
    public let publicKey: Data

    /// The signature proving the ownership
    public let signature: Data

    /// The current Unix timestamp that was used to create the proof
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

