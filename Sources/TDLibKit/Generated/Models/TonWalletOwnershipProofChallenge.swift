//
//  TonWalletOwnershipProofChallenge.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

