//
//  TonConnectConnectData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Contains data required to give access to the TON wallet of the current user in acceptOauthRequest
public struct TonConnectConnectData: Codable, Equatable, Hashable {

    /// Body of the result of the connection request as in sendTonConnectSessionConnectResult
    public let body: Data

    /// Answer to the challenge received from setTonConnectSessionWalletClientId
    public let challengeAnswer: Data

    /// Proof of the TON wallet ownership for the payload oauthLinkInfo.ton_proof_payload
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

