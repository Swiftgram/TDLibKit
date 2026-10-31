//
//  UserTonWalletAddresses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-4c6377aa
//  https://github.com/tdlib/td/tree/4c6377aa
//

import Foundation


/// Represents a list of TON wallet addresses of users
public struct UserTonWalletAddresses: Codable, Equatable, Hashable {

    /// A list of TON wallet addresses
    public let addresses: [UserTonWalletAddress]


    public init(addresses: [UserTonWalletAddress]) {
        self.addresses = addresses
    }
}

