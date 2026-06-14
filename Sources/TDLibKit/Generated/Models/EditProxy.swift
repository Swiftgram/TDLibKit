//
//  EditProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Edits an existing proxy server for network requests. Can be called before authorization
public struct EditProxy: Codable, Equatable, Hashable {

    /// New comment for the proxy
    public let comment: String?

    /// Pass true to immediately enable the proxy
    public let enable: Bool?

    /// The new information about the proxy
    public let proxy: Proxy?

    /// Proxy identifier
    public let proxyId: Int?


    public init(
        comment: String?,
        enable: Bool?,
        proxy: Proxy?,
        proxyId: Int?
    ) {
        self.comment = comment
        self.enable = enable
        self.proxy = proxy
        self.proxyId = proxyId
    }
}

