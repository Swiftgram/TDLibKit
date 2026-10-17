//
//  CreateTonConnectSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-ab8d769f
//  https://github.com/tdlib/td/tree/ab8d769f
//

import Foundation


/// Creates a TON Connect session; can be used only if getOption("can_use_ton_wallet")
public struct CreateTonConnectSession: Codable, Equatable, Hashable {

    /// Hex-encoded public X25519 key of the dApp
    public let dappClientId: String?

    /// URL of the manifest of the dApp
    public let manifestUrl: String?


    public init(
        dappClientId: String?,
        manifestUrl: String?
    ) {
        self.dappClientId = dappClientId
        self.manifestUrl = manifestUrl
    }
}

