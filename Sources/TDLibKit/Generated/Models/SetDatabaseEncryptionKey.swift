//
//  SetDatabaseEncryptionKey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
public struct SetDatabaseEncryptionKey: Codable, Equatable, Hashable {

    /// New encryption key
    public let newEncryptionKey: Data?


    public init(newEncryptionKey: Data?) {
        self.newEncryptionKey = newEncryptionKey
    }
}

