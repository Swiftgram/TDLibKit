//
//  ClearAllDraftMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-aa8a4979
//  https://github.com/tdlib/td/tree/aa8a4979
//

import Foundation


/// Clears draft messages in all chats
public struct ClearAllDraftMessages: Codable, Equatable {

    /// If true, local draft messages in secret chats will not be cleared
    public let excludeSecretChats: Bool?


    public init(excludeSecretChats: Bool?) {
        self.excludeSecretChats = excludeSecretChats
    }
}

