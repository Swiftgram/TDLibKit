//
//  EnableProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-77b34797
//  https://github.com/tdlib/td/tree/77b34797
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

