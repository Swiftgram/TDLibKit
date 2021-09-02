//
//  GetProxyLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization
public struct GetProxyLink: Codable {

    /// Proxy identifier
    public let proxyId: Int


    public init(proxyId: Int) {
        self.proxyId = proxyId
    }
}

