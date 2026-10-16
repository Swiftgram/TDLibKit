//
//  TonWalletOwnershipProof.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Represents a proof of TON wallet ownership
public struct TonWalletOwnershipProof: Codable, Equatable, Hashable {

    /// Public key of the wallet
    public let publicKey: Data

    /// The signature prooving the ownership
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

