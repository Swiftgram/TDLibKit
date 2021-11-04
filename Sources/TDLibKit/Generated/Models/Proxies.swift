//
//  Proxies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Represents a list of proxy servers
public struct Proxies: Codable {

    /// List of proxy servers
    public let proxies: [Proxy]


    public init(proxies: [Proxy]) {
        self.proxies = proxies
    }
}

