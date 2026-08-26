//
//  PingProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization
public struct PingProxy: Codable, Equatable, Hashable {

    /// The proxy to test; pass null to ping a Telegram server without a proxy
    public let proxy: Proxy?


    public init(proxy: Proxy?) {
        self.proxy = proxy
    }
}

