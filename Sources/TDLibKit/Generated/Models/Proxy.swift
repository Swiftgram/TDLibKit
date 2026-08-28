//
//  Proxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes a proxy server
public struct Proxy: Codable, Equatable, Hashable {

    /// Proxy server port
    public let port: Int

    /// Proxy server domain or IP address
    public let server: String

    /// Type of the proxy
    public let type: ProxyType


    public init(
        port: Int,
        server: String,
        type: ProxyType
    ) {
        self.port = port
        self.server = server
        self.type = type
    }
}

