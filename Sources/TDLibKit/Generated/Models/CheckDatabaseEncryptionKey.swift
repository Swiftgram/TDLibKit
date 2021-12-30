//
//  CheckDatabaseEncryptionKey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
//

import Foundation


/// Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey
public struct CheckDatabaseEncryptionKey: Codable, Equatable {

    /// Encryption key to check or set up
    public let encryptionKey: Data?


    public init(encryptionKey: Data?) {
        self.encryptionKey = encryptionKey
    }
}

