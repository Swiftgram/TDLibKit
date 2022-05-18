//
//  Proxies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e65c0827
//  https://github.com/tdlib/td/tree/e65c0827
//

import Foundation


/// Represents a list of proxy servers
public struct Proxies: Codable, Equatable {

    /// List of proxy servers
    public let proxies: [Proxy]


    public init(proxies: [Proxy]) {
        self.proxies = proxies
    }
}

