//
//  TonConnectConnectRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
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

