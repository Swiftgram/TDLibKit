//
//  PingProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-ff687167
//  https://github.com/tdlib/td/tree/ff687167
//

import Foundation


/// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization
public struct PingProxy: Codable, Equatable, Hashable {

    /// Proxy identifier. Use 0 to ping a Telegram server without a proxy
    public let proxyId: Int?


    public init(proxyId: Int?) {
        self.proxyId = proxyId
    }
}

