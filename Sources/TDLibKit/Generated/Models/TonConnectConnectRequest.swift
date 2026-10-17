//
//  TonConnectConnectRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-ab8d769f
//  https://github.com/tdlib/td/tree/ab8d769f
//

import Foundation


/// Contains information about a request to connect the user's TON wallet to a dApp using TON Connect
public struct TonConnectConnectRequest: Codable, Equatable, Hashable {

    /// Items requested from the wallet
    public let items: [TonConnectConnectItem]

    /// URL of the manifest of the dApp
    public let manifestUrl: String


    public init(
        items: [TonConnectConnectItem],
        manifestUrl: String
    ) {
        self.items = items
        self.manifestUrl = manifestUrl
    }
}

