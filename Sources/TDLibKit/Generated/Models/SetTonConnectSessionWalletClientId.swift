//
//  SetTonConnectSessionWalletClientId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Sets wallet_client_id for a pending TON Connect session. Then, sendTonConnectSessionConnectResult must be used to accept or reject the session. If the session was created for an OAuth request, then acceptOauthRequest must be used instead
public struct SetTonConnectSessionWalletClientId: Codable, Equatable, Hashable {

    /// Unique identifier of the session
    public let sessionId: TdInt64?

    /// Hex-encoded public X25519 key of the current user's application calculated from the TON wallet private key and session parameters
    public let walletClientId: String?


    public init(
        sessionId: TdInt64?,
        walletClientId: String?
    ) {
        self.sessionId = sessionId
        self.walletClientId = walletClientId
    }
}

