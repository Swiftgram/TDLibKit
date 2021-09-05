//
//  SetDatabaseEncryptionKey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
public struct SetDatabaseEncryptionKey: Codable {

    /// New encryption key
    public let newEncryptionKey: Data


    public init(newEncryptionKey: Data) {
        self.newEncryptionKey = newEncryptionKey
    }
}

