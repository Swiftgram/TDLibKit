//
//  AddedProxy.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.61-6d509061
//  https://github.com/tdlib/td/tree/6d509061
//

import Foundation


/// Contains information about a proxy server added to the list of proxies
public struct AddedProxy: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the proxy
    public let id: Int

    /// True, if the proxy is enabled now
    public let isEnabled: Bool

    /// Point in time (Unix timestamp) when the proxy was last used; 0 if never
    public let lastUsedDate: Int

    /// The proxy
    public let proxy: Proxy


    public init(
        id: Int,
        isEnabled: Bool,
        lastUsedDate: Int,
        proxy: Proxy
    ) {
        self.id = id
        self.isEnabled = isEnabled
        self.lastUsedDate = lastUsedDate
        self.proxy = proxy
    }
}

