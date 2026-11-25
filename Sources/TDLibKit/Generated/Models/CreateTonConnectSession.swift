//
//  CreateTonConnectSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

