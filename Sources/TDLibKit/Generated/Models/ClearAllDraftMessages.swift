//
//  ClearAllDraftMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-858078d8
//  https://github.com/tdlib/td/tree/858078d8
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

