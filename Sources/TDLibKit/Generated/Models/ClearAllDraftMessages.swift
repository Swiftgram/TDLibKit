//
//  ClearAllDraftMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-ed2644c2
//  https://github.com/tdlib/td/tree/ed2644c2
//

import Foundation


/// Clears message drafts in all chats
public struct ClearAllDraftMessages: Codable, Equatable {

    /// Pass true to keep local message drafts in secret chats
    public let excludeSecretChats: Bool?


    public init(excludeSecretChats: Bool?) {
        self.excludeSecretChats = excludeSecretChats
    }
}

