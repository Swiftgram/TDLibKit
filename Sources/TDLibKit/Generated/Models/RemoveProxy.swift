//
//  RemoveProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
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

