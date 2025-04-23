//
//  EnableProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
//

import Foundation


/// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization
public struct EnableProxy: Codable, Equatable, Hashable {

    /// Proxy identifier
    public let proxyId: Int?


    public init(proxyId: Int?) {
        self.proxyId = proxyId
    }
}

