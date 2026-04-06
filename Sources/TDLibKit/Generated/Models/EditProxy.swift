//
//  EditProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Edits an existing proxy server for network requests. Can be called before authorization
public struct EditProxy: Codable, Equatable, Hashable {

    /// Pass true to immediately enable the proxy
    public let enable: Bool?

    /// The new information about the proxy
    public let proxy: Proxy?

    /// Proxy identifier
    public let proxyId: Int?


    public init(
        enable: Bool?,
        proxy: Proxy?,
        proxyId: Int?
    ) {
        self.enable = enable
        self.proxy = proxy
        self.proxyId = proxyId
    }
}

