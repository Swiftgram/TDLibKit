//
//  AddProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-49b3bcbb
//  https://github.com/tdlib/td/tree/49b3bcbb
//

import Foundation


/// Adds a proxy server for network requests. Can be called before authorization
public struct AddProxy: Codable, Equatable, Hashable {

    /// Comment to set for the proxy
    public let comment: String?

    /// Pass true to immediately enable the proxy
    public let enable: Bool?

    /// The proxy to add
    public let proxy: Proxy?


    public init(
        comment: String?,
        enable: Bool?,
        proxy: Proxy?
    ) {
        self.comment = comment
        self.enable = enable
        self.proxy = proxy
    }
}

