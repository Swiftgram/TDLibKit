//
//  UserTonWalletAddresses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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

