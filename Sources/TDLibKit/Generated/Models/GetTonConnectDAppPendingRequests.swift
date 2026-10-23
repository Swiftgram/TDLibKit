//
//  GetTonConnectDAppPendingRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Returns pending requests with a dApp through TON Connect
public struct GetTonConnectDAppPendingRequests: Codable, Equatable, Hashable {

    /// Hex-encoded public X25519 key of the dApp
    public let dappClientId: String?


    public init(dappClientId: String?) {
        self.dappClientId = dappClientId
    }
}

