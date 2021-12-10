//
//  CheckDatabaseEncryptionKey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-5a764139
//  https://github.com/tdlib/td/tree/5a764139
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

