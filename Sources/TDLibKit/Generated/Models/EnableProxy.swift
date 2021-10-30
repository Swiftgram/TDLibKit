//
//  EnableProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-377bd189
//  https://github.com/tdlib/td/tree/377bd189
//

import Foundation


/// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization
public struct EnableProxy: Codable {

    /// Proxy identifier
    public let proxyId: Int?


    public init(proxyId: Int?) {
        self.proxyId = proxyId
    }
}

