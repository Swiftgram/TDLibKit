//
//  Proxies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-4bafdc2b
//  https://github.com/tdlib/td/tree/4bafdc2b
//

import Foundation


/// Represents a list of proxy servers
public struct Proxies: Codable, Equatable, Hashable {

    /// List of proxy servers
    public let proxies: [Proxy]


    public init(proxies: [Proxy]) {
        self.proxies = proxies
    }
}

