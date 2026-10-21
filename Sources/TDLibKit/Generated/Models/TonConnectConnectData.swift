//
//  TonConnectConnectData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-74e914ee
//  https://github.com/tdlib/td/tree/74e914ee
//

import Foundation


/// Data required to accept a TON Connect session
public struct TonConnectConnectData: Codable, Equatable, Hashable {

    /// Body of the result
    public let body: Data

    /// Answer to the challenge received from setTonConnectSessionWalletClientId
    public let challengeAnswer: Data

    /// Proof of the TON wallet ownership
    public let proof: TonWalletOwnershipProof

    /// Unique identifier of the session
    public let sessionId: TdInt64


    public init(
        body: Data,
        challengeAnswer: Data,
        proof: TonWalletOwnershipProof,
        sessionId: TdInt64
    ) {
        self.body = body
        self.challengeAnswer = challengeAnswer
        self.proof = proof
        self.sessionId = sessionId
    }
}

