//
//  TonConnectSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-ab8d769f
//  https://github.com/tdlib/td/tree/ab8d769f
//

import Foundation


/// Represents a TON Connect session. See https://github.com/ton-blockchain/ton-connect/tree/main/spec for full TON Connect protocol documentation
public struct TonConnectSession: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the session was created
    public let creationDate: Int

    /// Hex-encoded public X25519 key of the dApp
    public let dappClientId: String

    /// Unique identifier of the session
    public let id: TdInt64

    /// Manifest of the dApp
    public let manifest: TonConnectManifest

    /// Nonce used for the session
    public let nonce: Data

    /// Session state
    public let state: TonConnectSessionState

    /// Hex-encoded public X25519 key of the current user's application; may be empty if none
    public let walletClientId: String


    public init(
        creationDate: Int,
        dappClientId: String,
        id: TdInt64,
        manifest: TonConnectManifest,
        nonce: Data,
        state: TonConnectSessionState,
        walletClientId: String
    ) {
        self.creationDate = creationDate
        self.dappClientId = dappClientId
        self.id = id
        self.manifest = manifest
        self.nonce = nonce
        self.state = state
        self.walletClientId = walletClientId
    }
}

