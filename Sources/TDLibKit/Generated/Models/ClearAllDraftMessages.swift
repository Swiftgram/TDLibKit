//
//  ClearAllDraftMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.12-a6903023
//  https://github.com/tdlib/td/tree/a6903023
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

