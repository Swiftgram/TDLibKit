//
//  UserTonWalletAddresses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-74e914ee
//  https://github.com/tdlib/td/tree/74e914ee
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

