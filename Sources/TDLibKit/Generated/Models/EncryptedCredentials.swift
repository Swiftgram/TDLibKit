//
//  EncryptedCredentials.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Contains encrypted Telegram Passport data credentials
public struct EncryptedCredentials: Codable, Equatable, Hashable {

    /// The encrypted credentials
    public let data: Data

    /// The decrypted data hash
    public let hash: Data

    /// Secret for data decryption, encrypted with the service's public key
    public let secret: Data


    public init(
        data: Data,
        hash: Data,
        secret: Data
    ) {
        self.data = data
        self.hash = hash
        self.secret = secret
    }
}

