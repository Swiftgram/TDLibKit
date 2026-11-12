//
//  AddedProxies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Represents a list of added proxy servers
public struct AddedProxies: Codable, Equatable, Hashable {

    /// List of proxy servers
    public let proxies: [AddedProxy]


    public init(proxies: [AddedProxy]) {
        self.proxies = proxies
    }
}

