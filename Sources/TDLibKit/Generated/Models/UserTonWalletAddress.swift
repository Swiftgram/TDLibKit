//
//  UserTonWalletAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Contains TON wallet address of a user
public struct UserTonWalletAddress: Codable, Equatable, Hashable {

    /// Public key of the user
    public let publicKey: Data

    /// Identifier of the user; 0 if unknown
    public let userId: Int64

    /// Address of the user's wallet in the TON blockchain
    public let walletAddress: String


    public init(
        publicKey: Data,
        userId: Int64,
        walletAddress: String
    ) {
        self.publicKey = publicKey
        self.userId = userId
        self.walletAddress = walletAddress
    }
}

