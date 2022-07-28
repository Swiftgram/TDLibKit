//
//  EditProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Edits an existing proxy server for network requests. Can be called before authorization
public struct EditProxy: Codable, Equatable {

    /// Pass true to immediately enable the proxy
    public let enable: Bool?

    /// Proxy server port
    public let port: Int?

    /// Proxy identifier
    public let proxyId: Int?

    /// Proxy server IP address
    public let server: String?

    /// Proxy type
    public let type: ProxyType?


    public init(
        enable: Bool?,
        port: Int?,
        proxyId: Int?,
        server: String?,
        type: ProxyType?
    ) {
        self.enable = enable
        self.port = port
        self.proxyId = proxyId
        self.server = server
        self.type = type
    }
}

