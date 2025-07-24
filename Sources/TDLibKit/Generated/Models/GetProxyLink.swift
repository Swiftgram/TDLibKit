//
//  GetProxyLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization
public struct GetProxyLink: Codable, Equatable, Hashable {

    /// Proxy identifier
    public let proxyId: Int?


    public init(proxyId: Int?) {
        self.proxyId = proxyId
    }
}

