//
//  AddProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Adds a proxy server for network requests. Can be called before authorization
public struct AddProxy: Codable {

    /// True, if the proxy should be enabled
    public let enable: Bool

    /// Proxy server port
    public let port: Int

    /// Proxy server IP address
    public let server: String

    /// Proxy type
    public let type: ProxyType


    public init(
        enable: Bool,
        port: Int,
        server: String,
        type: ProxyType
    ) {
        self.enable = enable
        self.port = port
        self.server = server
        self.type = type
    }
}

