//
//  RemoveProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-64264b0f
//  https://github.com/tdlib/td/tree/64264b0f
//

import Foundation


/// Removes a proxy server. Can be called before authorization
public struct RemoveProxy: Codable, Equatable, Hashable {

    /// Proxy identifier
    public let proxyId: Int?


    public init(proxyId: Int?) {
        self.proxyId = proxyId
    }
}

