//
//  TonWalletOwnershipProofChallenge.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Represents a challenge for TON wallet ownership proof
public struct TonWalletOwnershipProofChallenge: Codable, Equatable, Hashable {

    /// Domain of the proof requester
    public let domain: String

    /// Payload of the challenge
    public let payload: String


    public init(
        domain: String,
        payload: String
    ) {
        self.domain = domain
        self.payload = payload
    }
}

