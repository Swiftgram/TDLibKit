//
//  RemoveProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Removes a proxy server. Can be called before authorization
public struct RemoveProxy: Codable {

    /// Proxy identifier
    public let proxyId: Int


    public init(proxyId: Int) {
        self.proxyId = proxyId
    }
}

