//
//  SetAccountTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-2e6ac1f2
//  https://github.com/tdlib/td/tree/2e6ac1f2
//

import Foundation


/// Changes the period of inactivity after which the account of the current user will automatically be deleted
public struct SetAccountTtl: Codable, Equatable {

    /// New account TTL
    public let ttl: AccountTtl?


    public init(ttl: AccountTtl?) {
        self.ttl = ttl
    }
}

