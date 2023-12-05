//
//  SetDatabaseEncryptionKey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
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

