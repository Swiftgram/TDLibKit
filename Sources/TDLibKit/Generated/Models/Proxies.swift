//
//  Proxies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-ed2644c2
//  https://github.com/tdlib/td/tree/ed2644c2
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

