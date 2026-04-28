//
//  AddProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
//

import Foundation


/// Adds a proxy server for network requests. Can be called before authorization
public struct AddProxy: Codable, Equatable, Hashable {

    /// Pass true to immediately enable the proxy
    public let enable: Bool?

    /// The proxy to add
    public let proxy: Proxy?


    public init(
        enable: Bool?,
        proxy: Proxy?
    ) {
        self.enable = enable
        self.proxy = proxy
    }
}

