//
//  CheckDatabaseEncryptionKey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey
public struct CheckDatabaseEncryptionKey: Codable {

    /// Encryption key to check or set up
    public let encryptionKey: Data


    public init(encryptionKey: Data) {
        self.encryptionKey = encryptionKey
    }
}

